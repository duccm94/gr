class Subject < ApplicationRecord
  include InitUserSubject

  ATTRIBUTES_PARAMS = [:name, :redmine_identifier, :image, :image_cache,
    :description, :content, :course_id]

  mount_uploader :image, ImageUploader

  after_create :create_user_subjects_when_add_new_subject

  validates :name, presence: true
  validates :redmine_identifier, presence: true

  belongs_to :course

  has_many :user_subjects, dependent: :destroy
  has_many :users, through: :user_subjects, dependent: :destroy

  delegate :code, :name, to: :course, prefix: true, allow_nil: true

  def subject_superusers
    users.superusers
  end

  def subject_trainees
    users.trainees
  end

  def redmine_link
    "http://demo.redmine.org/projects/#{self.redmine_identifier}"
  end

  private
  def create_user_subjects_when_add_new_subject
    create_user_subjects course.user_courses.find_user_by_role("trainee"),
      [self], course_id
  end
end
