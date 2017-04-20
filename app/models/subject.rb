class Subject < ApplicationRecord
  ATTRIBUTES_PARAMS = [:identifier, :description, :course_id]

  belongs_to :course

  has_many :user_subjects, dependent: :destroy

  delegate :name, to: :course, prefix: true, allow_nil: true
end