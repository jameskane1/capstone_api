class WeatherSerializer < ActiveModel::Serializer
  attributes :id, :city, :zip, :google
end
