class Stroll < ApplicationRecord
	belongs_to :dog_sitter
	has_and_belongs_to_many :dogs
end
