class SubjectsController < ApplicationController
  load_and_authorize_resource :user
  load_and_authorize_resource :course, only: [:index, :show]
  load_and_authorize_resource :subject, only: :show

  before_action :load_course, only: :update
  before_action :check_status, only: :update
  before_action :check_status_subject, only: :update

  def show
    session[:conversations] ||= []
    @users = User.other_users current_user.id
    @conversations = Conversation.includes(:receiver, :messages).find(session[:conversations])
    @user_subjects = @subject.user_subjects
    @user_subject = @user_subjects.find{|user_subject| user_subject.user_id == current_user.id}
    @trainers = @user_subject.user_subject_superusers
    @trainees = @user_subject.user_subject_trainees
  end

  private
  def load_course
    @user_subject = UserSubject.find params[:subject_id]
    @user_course = @user_subject.user_course
  end

  def check_status
    redirect_to :back unless params[:status] == Settings.finish
  end

  def check_status_subject
    redirect_to :back unless @user_subject.progress?
  end
end
