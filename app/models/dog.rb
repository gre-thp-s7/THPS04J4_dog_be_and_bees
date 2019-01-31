class Dog < ApplicationRecord
	  has_many :dog_strolls
	  has_many :strolls, through: :dog_strolls 
	  has_many :dog_sitters, through: :dog_strolls, through: :dog_strolls

end
