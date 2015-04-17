class Guide < ActiveRecord::Base
	belongs_to :persona
	has_and_belongs_to_many :steps
end
