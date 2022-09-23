class SubCatagory < ApplicationRecord
  belongs_to :catagory
  has_many :products
end
