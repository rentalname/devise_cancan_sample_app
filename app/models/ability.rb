class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :admin_read, :all
    else
      can :member_read, :all
    end
  end
end
