class ModifyResources < ActiveRecord::Migration
  def change
  	add_column :resources, :source, :string
  	add_column :resources, :likes, :integer
  	add_column :resources, :public, :boolean
  	remove_column :resources, :tag_id, :integer
  	remove_column :resources, :asset_url, :string
  	remove_column :resources, :category, :string
  	add_index :resources, :category_id
  end
end
