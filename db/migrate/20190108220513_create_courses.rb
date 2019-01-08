class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :subject_id
      t.integer :user_id
      t.timestamps
    end
  end
end
