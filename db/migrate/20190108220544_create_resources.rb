class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :type
      t.string :name
      t.string :description
      t.integer :course_id
      t.integer :user_id
      t.timestamps
    end
  end
end
