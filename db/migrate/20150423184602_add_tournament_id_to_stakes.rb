class AddTournamentIdToStakes < ActiveRecord::Migration
  def change
    add_column :stakes, :tournament_id_2, :integer
    add_column :stakes, :tournament_id_3, :integer
    add_column :stakes, :tournament_id_4, :integer
    add_column :stakes, :tournament_id_5, :integer
    add_column :stakes, :tournament_id_6, :integer
    add_column :stakes, :tournament_id_7, :integer
    add_column :stakes, :tournament_id_8, :integer
    add_column :stakes, :tournament_id_9, :integer
    add_column :stakes, :tournament_id_10, :integer
  end
end
