class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :url
      t.belongs_to :category

      t.timestamps
    end
  end
end
