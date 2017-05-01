class CreateUserCourseEvaluations < ActiveRecord::Migration[5.0]
  def change
    create_table :user_course_evaluations do |t|
      t.integer :total_point
      t.text :content
      t.references :user_course, unique: true, foreign_key: true

      t.timestamps
    end
  end
end
