class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.belongs_to :home_team, index: true
      t.belongs_to :away_team, index: true
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
