class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    user.admin?
  end

  def show?
    index?
  end

  def new?
    index?
  end

  def create?
    index?
  end

  def edit?
    index?
  end

  def update?
    index?
  end

  def destroy?
    index?
  end

  def left_navbar?
    User.roles[user.role] >= 2
  end

  def right_navbar?
    User.roles[user.role] >= 2
  end

  def peut_réserver?
    User.roles[user.role] >= 2
  end

end
