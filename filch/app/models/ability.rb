# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.super_admin
      can :manage, :all
    elsif user.admin
      can :manage, User , geofence: user.geofence
      can :manage, Post , user:{geofence: user.geofence}
      can :manage, Dumpster , post:{user:{geofence: user.geofence}}
      can :manage, Blacklist , post:{user:{geofence: user.geofence}}
      can :manage, Dumpster , post:{geofence: user.geofence}
      can :manage, Blacklist , post:{geofence: user.geofence}
    else 
      can :manage, Post, user: {id: user.id}
      can :read, Dumpster , post:{user:{uid: user.uid}}
      can :read, Blacklist , post:{user:{uid: user.uid}}
      can :crud, User , user: {uid: user.uid}
      can :read, User
      can :read, Post , visibility: true 
    end
  



    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
