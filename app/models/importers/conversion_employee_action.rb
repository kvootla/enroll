module Importers
  class ConversionEmployeeAction < ConversionEmployeeCommon
      validate :validate_fein
      validate :validate_relationships
      validates_length_of :fein, is: 9

      def initialize(opts = {})
        super(opts)
        @original_attributes = opts
      end

      def validate_relationships
        (1..8).to_a.each do |num|
           dep_ln = "dep_#{num}_name_last".to_sym
           dep_rel = "dep_#{num}_relationship".to_sym
           unless self.send(dep_ln).blank?
             if self.send(dep_rel).blank?
                errors.add("dep_#{num}_relationship", "invalid.  must be one of: #{RELATIONSHIP_MAP.keys.join(", ")}")
             end
           end
        end
      end

      def validate_fein
        return true if fein.blank?
        found_employer = find_employer
        if found_employer.nil?
          errors.add(:fein, "does not exist")
        end
      end

      def find_employer
        org = Organization.where(:fein => fein).first
        return nil unless org
        org.employer_profile
      end

      def find_employee
        return @found_employee unless @found_employee.nil?
        return nil if subscriber_ssn.blank?
        found_employer = find_employer
        return nil if found_employer.nil?
        candidate_employees = CensusEmployee.where({
          employer_profile_id: found_employer.id,
          hired_on: {"$lte" => start_date},
          encrypted_ssn: CensusMember.encrypt_ssn(subscriber_ssn)
        })
        non_terminated_employees = candidate_employees.reject do |ce|
          (!ce.employment_terminated_on.blank?) && ce.employment_terminated_on <= Date.today
        end

        @found_employee = non_terminated_employees.sort_by(&:hired_on).last
      end 

      def save
        return false unless valid?
        found_employee = find_employee
        proxy = found_employee.nil? ? ::Importers::ConversionEmployeeCreate.new(@original_attributes) : ::Importers::ConversionEmployeeUpdate.new(@original_attributes)
        result = proxy.save
        propagate_warnings(proxy)
        propagate_errors(proxy)
        result
      end

      def propagate_warnings(proxy)
        proxy.warnings.each do |attr, err|
          warnings.add(attr, err)
        end
      end

      def propagate_errors(proxy)
        proxy.errors.each do |attr, err|
          errors.add(attr, err)
        end
      end
  end
end
