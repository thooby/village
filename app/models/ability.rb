class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user

    if user.role? 'superadmin'
      can :manage, :all
    elsif user.role? :admin
      can :manage, :all, :except => [User] 
    elsif user.role? :technician
      can :manage, [Patient]
      can :read [Commune, Village]
    else 
      cannot :read, :all
    end
  end
end