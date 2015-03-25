class CreateGuides < ActiveRecord::Migration
  def change
    create_table :guides do |t|
      t.string :title
      t.string :description
      t.integer :tag_id
      t.string :url
      t.string :asset_url
      t.integer :category_id

      t.timestamps
    end
  end
end
