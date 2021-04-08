class Video < ApplicationRecord
    belongs_to :category
    validates :url, :category_id, :thumbnail_url, :embed_html, presence: true
end
