class Resource < ActiveRecord::Base
	has_and_belongs_to_many :categories

  def stringify_categories
    self.categories.pluck(:id).join(' ')
  end
end
