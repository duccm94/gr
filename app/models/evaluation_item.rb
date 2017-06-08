class EvaluationItem < ApplicationRecord
  belongs_to :evaluation_criterium
  belongs_to :user_course_evaluation

  validate :check_point, on: [:create, :update]

  def check_point
    unless self.evaluation_criterium_id.nil?
      if self.point > self.evaluation_criterium.max_point
        errors.add :point, I18n.t("error.wrong_point")
      elsif self.point < 0
        errors.add :point, I18n.t("error.wrong_point")
      end
    end
  end
end
