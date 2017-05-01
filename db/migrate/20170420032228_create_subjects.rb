class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.text :content
      t.string :redmine_identifier
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
