class EvaluationItem < ApplicationRecord
  belongs_to :evaluation_criterium
  belongs_to :user_course_evaluation
end
