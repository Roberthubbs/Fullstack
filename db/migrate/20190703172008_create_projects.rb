class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :description, null: false
      t.text :body, null: false
      t.text :materials, null: false
      t.integer :number_of_likes, null: false
      t.integer :author_id, null: false
      t.timestamps
    end
    add_index :projects, :description, unique: true
    add_index :projects, :author_id
  end
end
