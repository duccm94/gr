class EvaluationCriterium < ApplicationRecord
  ATTRIBUTES_PARAMS = [:name, :max_point]

  has_many :evaluation_items

  validates :name, presence: true
  validates :max_point, presence: true
end
