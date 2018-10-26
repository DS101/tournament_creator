class AddTournamentRefToTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams_tournaments, id: false do |t|
      t.belongs_to :team, index: true
      t.belongs_to :tournament, index: true
    end
  end
end