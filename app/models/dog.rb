class Dog < ApplicationRecord
	  has_and_belongs_to_many :strolls
    belongs_to :city
end
