class Subject < ApplicationRecord
  include InitUserSubject

  after_create :create_user_subjects_when_add_new_subject

  ATTRIBUTES_PARAMS = [:name, :redmine_identifier, :description, :content, :course_id]

  validates :name, presence: true
  validates :redmine_identifier, presence: true

  belongs_to :course

  has_many :user_subjects, dependent: :destroy
  has_many :users, through: :user_subjects, dependent: :destroy

  delegate :code, :name, to: :course, prefix: true, allow_nil: true

  def subject_trainees
    users.trainees
  end

  private
  def create_user_subjects_when_add_new_subject
    create_user_subjects course.user_courses.find_user_by_role("trainee"),
      [self], course_id
  end
end
