class CreateUserSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :user_subjects do |t|
      t.integer :status, default: 0
      t.references :user, foreign_key: true
      t.references :user_course, foreign_key: true
      t.references :subject, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
