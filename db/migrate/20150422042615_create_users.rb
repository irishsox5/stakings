class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :username
      t.string :image_url
      t.string :screen_name
      t.string :location

      t.timestamps null: false
    end
  end
end
