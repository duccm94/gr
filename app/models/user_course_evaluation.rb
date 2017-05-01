class UserCourseEvaluation < ApplicationRecord
  after_create :create_evaluation_items

  before_save :cal_total_point

  ATTRIBUTES_PARAMS = [:total_point, :content, :user_course_id,
    evaluation_items_attributes: [:id, :name, :point, :evaluation_criterium_id,
    :user_course_evaluation_id]]

  belongs_to :user_course

  has_many :evaluation_items, dependent: :destroy

  accepts_nested_attributes_for :evaluation_items, allow_destroy: true

  private
  def cal_total_point
    points = self.evaluation_items.map{|item| item.point}
    self.total_point = points.inject(0){|sum, x| sum + x}
  end

  def create_evaluation_items
    EvaluationCriterium.all.each do |criterium|
      evaluation_items.build(name: criterium.name,
        evaluation_criterium_id: criterium.id)
    end
  end
end
