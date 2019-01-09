class CreateResources < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :resource_type
      t.string :name
      t.string :description
      t.string :photo
      t.integer :course_id
      t.integer :user_id
      t.timestamps
    end
  end
end
