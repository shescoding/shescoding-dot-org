class CreateResourcesAndCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :resources do |t|
      t.string :title
      t.string :url
      t.string :description
      t.string :source
      t.datetime :date
      t.boolean :public
      t.integer :likes

      t.timestamps
    end

    create_table :categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :categories_resources, id: false do |t|
      t.belongs_to :resource, index: true
      t.belongs_to :category, index: true
    end
  end
end
