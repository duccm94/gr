class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    alias_action :read, :update, :destroy, to: :rud
    case user.role
    when "admin"
      can :manage, :all
      cannot :create, Feedback
    when "trainer"
      can :read, ActiveAdmin::Page, name: "Dashboard"
      can :read, User
      can :update, User, id: user.id
      can [:read, :update], Course, id: user.course_ids
      # can [:read, :update], Course do |course|
      #   course.user_ids.include? user.id
      # end
      can [:read, :batch_action], UserCourse, course: {id: user.course_ids}
      can :create, Subject
      can :manage, Subject, course: {id: user.course_ids}
      # can [:read, :update, :destroy], Subject do |subject|
      #   subject.course.user_ids.include? user.id
      # end
      can [:read, :batch_action], UserSubject, course: {id: user.course_ids}
      can :manage, EvaluationCriterium
      can [:read, :update], UserCourseEvaluation, user_course: {course: {id: user.course_ids}}
      can :manage, Feedback, user_id: user.id
      can :create, ActiveAdmin::Comment
      can :manage, ActiveAdmin::Comment, author_id: user.id
      can :manage, Conversation
      can :manage, Message
    else
      can :read, User
      can :update, User, id: user.id
      can :read, Course, id: user.course_ids
      can :read, UserCourse, user_id: user.id
      can :read, Subject, course: {id: user.course_ids}
      can :read, UserSubject, user_id: user.id
      can :manage, Feedback, user_id: user.id
      can :manage, Conversation
      can :manage, Message
    end
  end
end
