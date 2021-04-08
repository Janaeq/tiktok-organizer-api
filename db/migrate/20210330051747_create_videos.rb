class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :url
      t.string :thumbnail_url
      t.string :embed_html
      t.integer :category_id

      t.timestamps
    end
  end
end
