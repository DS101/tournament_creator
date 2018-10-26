class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.references :tournament, foreign_key: true
      t.integer :name

      t.timestamps
    end
  end
end
