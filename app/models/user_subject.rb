class UserSubject < ApplicationRecord
  enum status: [:init, :progress, :finish]

  belongs_to :user
  belongs_to :user_course
  belongs_to :subject
  belongs_to :course

  scope :init_user_subjects, ->{where status: :init}
  scope :progress_user_subjects, ->{where status: :progress}
  scope :finish_user_subjects, ->{where status: :finish}

  delegate :name, to: :user, prefix: true, allow_nil: true
  delegate :name, :description, :redmine_identifier,
    to: :subject, prefix: true, allow_nil: true
  delegate :code, :name, to: :course, prefix: true, allow_nil: true

  def user_subject_superusers
    course.users.superusers
  end

  def user_subject_trainees
    course.users.trainees
  end
end
