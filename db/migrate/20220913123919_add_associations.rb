class AddAssociations < ActiveRecord::Migration[7.0]
  def change
    add_reference :sub_catagories, :catagory, index: true
    add_reference :products, :catagory, index: true
    add_reference :products, :sub_catagory, index: true
  end
end
