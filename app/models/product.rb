class Product < ApplicationRecord
  belongs_to :catagory, optional: true
  belongs_to :sub_catagory, optional: true

  belongs_to :cart
  belongs_to :user


  has_many :reviews, dependent: :destroy
  accepts_nested_attributes_for :reviews, reject_if: :all_blank, allow_destroy: true
end
