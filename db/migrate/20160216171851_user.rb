class User < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.string :token
      t.string :nickname
      t.string :name
      t.string :email
      t.string :image_url
    end
  end
end
