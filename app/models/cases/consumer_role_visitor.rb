module Cases
  class ConsumerRoleVisitor

    def visit(subject)
      subject.family_members.first
    end

  end
end
