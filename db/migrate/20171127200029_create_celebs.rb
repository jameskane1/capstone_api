class CreateCelebs < ActiveRecord::Migration[5.1]
  def change
    create_table :celebs do |t|
      t.string :name
      t.string :age
      t.string :occupation
      t.string :google

      t.timestamps
    end
  end
end
