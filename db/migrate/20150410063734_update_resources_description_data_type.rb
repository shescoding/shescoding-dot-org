class UpdateResourcesDescriptionDataType < ActiveRecord::Migration[5.2]
  def change
    change_column :resources, :description, :text
  end
end
