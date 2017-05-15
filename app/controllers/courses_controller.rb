class CoursesController < ApplicationController
  load_and_authorize_resource
  before_action :load_course, only: [:show, :index]

  def index
    session[:conversations] ||= []
    @users = User.other_users current_user.id
    @conversations = Conversation.includes(:receiver, :messages).find(session[:conversations])
  end

  def show
  end

  private
  def load_course
    @user_courses = current_user.user_courses_active
    @course_active_last = @user_courses.last
  end
end
