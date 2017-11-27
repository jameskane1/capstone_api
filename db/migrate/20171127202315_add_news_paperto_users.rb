class AddNewsPapertoUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :news_papers, :user, foreign_key: true
  end
end
