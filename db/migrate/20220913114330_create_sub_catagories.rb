class CreateSubCatagories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_catagories do |t|
      t.string :color
      
      t.timestamps
    end
  end
end
