class CreateStakes < ActiveRecord::Migration
  def change
    create_table :stakes do |t|
      t.integer :user_id
      t.integer :tour_id
      t.integer :tournament_id
      t.integer :amount_of_shares
      t.float :mark_up
      t.text :description

      t.timestamps null: false
    end
  end
end
