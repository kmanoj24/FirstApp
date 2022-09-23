class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :description

      t.timestamps
    end
    add_reference :reviews, :product, index: true
  end
end
