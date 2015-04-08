class ModifyGuides < ActiveRecord::Migration
  def change
  	add_column :guides, :likes, :integer
  	remove_column :guides, :tag_id, :integer
  	remove_column :guides, :asset_url, :string
  	remove_column :guides, :category_id, :integer
  	add_reference :guides, :step, index: true
  end
end
