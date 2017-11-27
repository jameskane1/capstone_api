class CreateNewsPapers < ActiveRecord::Migration[5.1]
  def change
    create_table :news_papers do |t|
      t.string :name
      t.string :site
      t.string :region

      t.timestamps
    end
  end
end
