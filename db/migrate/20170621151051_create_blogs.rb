class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id, null: false
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
