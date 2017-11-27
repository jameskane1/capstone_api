class CreateSports < ActiveRecord::Migration[5.1]
  def change
    create_table :sports do |t|
      t.string :team
      t.string :league
      t.string :google

      t.timestamps
    end
  end
end
