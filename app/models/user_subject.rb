class UserSubject < ApplicationRecord
  belongs_to :user
  belongs_to :user_course
  belongs_to :subject
  belongs_to :course

  delegate :name, to: :user, prefix: true, allow_nil: true
  delegate :name, :description, :redmine_identifier,
    to: :subject, prefix: true, allow_nil: true
  delegate :code, :name, to: :course, prefix: true, allow_nil: true
end
