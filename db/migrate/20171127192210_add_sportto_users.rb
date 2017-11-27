class AddSporttoUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :sports, :user, foreign_key: true
  end
end
