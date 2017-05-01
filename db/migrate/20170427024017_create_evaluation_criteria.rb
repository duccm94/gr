class CreateEvaluationCriteria < ActiveRecord::Migration[5.0]
  def change
    create_table :evaluation_criteria do |t|
      t.string :name
      t.integer :max_point

      t.timestamps
    end
  end
end
