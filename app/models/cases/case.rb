module Cases
  class Case
    include Mongoid::Document
    include Mongoid::Timestamps

    KINDS = [:qhp_initial_application_case]

    field :case_id, type: String
    field :kind, type: Symbol


    def call(subject)
      build_case(subject)
    end


    private
    def build_case(subject)
      raise NotImpelementedError.new
    end

  end
end
