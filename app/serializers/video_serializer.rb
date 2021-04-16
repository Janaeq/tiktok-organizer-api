class VideoSerializer < ActiveModel::Serializer
    belongs_to :category
    attributes :id, :url, :thumbnail_url, :embed_html
end