class AddWeathertoUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :weathers, :user, foreign_key: true
  end
end
