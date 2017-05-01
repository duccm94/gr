class CreateEvaluationItems < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluation_items do |t|
      t.integer :point, default: 0
      t.string :name
      t.references :evaluation_criterium, foreign_key: true
      t.references :user_course_evaluation, foreign_key: true

      t.timestamps
    end
  end
end
