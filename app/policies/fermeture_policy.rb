class FermeturePolicy < ApplicationPolicy
    class Scope < Scope
      def resolve
        scope
      end
    end
  
    def index?
      user
    end

    def new?
      user.admin?
    end

end