module Cases
  module CaseVisitable

    def accept(visitor)
      visitor.visit(self)
    end

  end
end
