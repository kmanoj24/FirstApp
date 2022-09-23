class Catagory < ApplicationRecord
	has_many :sub_catagories
	has_many :products
end
