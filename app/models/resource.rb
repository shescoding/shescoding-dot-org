class Resource < ActiveRecord::Base
	has_and_belongs_to_many :categories

	acts_as_taggable
end
