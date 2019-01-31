class DogStroll < ApplicationRecord
	has_many :Dogs 
	belongs_to :stroll
end
