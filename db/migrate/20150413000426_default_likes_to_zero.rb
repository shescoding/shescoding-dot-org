class DefaultLikesToZero < ActiveRecord::Migration[5.2]
  def up
    change_column :resources, :likes, :integer, default: 0
    Resource.update_all(likes: 0)
  end

  def down
    change_column :resources, :likes, :integer, default: nil
  end
end
