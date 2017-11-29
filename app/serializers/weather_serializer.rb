class WeatherSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :google
end
