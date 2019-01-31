class Stroll < ApplicationRecord
	belongs_to :dog_sitter
	has_many :dog_strolls
end
