class AddUniqueRestraintToUsersUid < ActiveRecord::Migration
  def change
    change_column :users, :uid, :string, :unique => true
  end
end
