class NewsPaperSerializer < ActiveModel::Serializer
  attributes :id, :name, :site, :region
end
