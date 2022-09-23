class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :description
      t.references :user

      t.timestamps
    end
  end
end
