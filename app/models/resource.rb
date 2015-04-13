class Resource < ActiveRecord::Base
	has_and_belongs_to_many :categories

	acts_as_taggable

  def self.public_and_sorted
    self.where(public: true).order(date: :desc, created_at: :desc)
  end
end
