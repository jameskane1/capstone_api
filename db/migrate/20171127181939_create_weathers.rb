class CreateWeathers < ActiveRecord::Migration[5.1]
  def change
    create_table :weathers do |t|
      t.string :city
      t.string :state
      t.string :google

      t.timestamps
    end
  end
end
