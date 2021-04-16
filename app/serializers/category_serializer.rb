class CategorySerializer < ActiveModel::Serializer
    has_many :videos
    attributes :id, :name
  end
  