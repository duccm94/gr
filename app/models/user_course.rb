class UserCourse < ApplicationRecord
  include InitUserSubject

  after_create :create_user_subjects_when_assign_trainee
  after_create :create_user_course_evaluation_when_assign_trainee

  enum status: [:init, :progress, :finish]

  belongs_to :user
  belongs_to :course

  has_many :user_subjects, dependent: :destroy
  has_one :user_course_evaluation, dependent: :destroy

  delegate :code, :name, :description, :content, :start_date, :end_date, :status,
    to: :course, prefix: true, allow_nil: true

  scope :find_user_by_role, ->role{joins(:user).where "users.role = ?", role}

  private
  def create_user_subjects_when_assign_trainee
    if user.role == "trainee"
      create_user_subjects [self], course.subjects, course_id
    end
  end

  def create_user_course_evaluation_when_assign_trainee
    if user.role == "trainee"
      create_user_course_evaluation
    end
  end
end
