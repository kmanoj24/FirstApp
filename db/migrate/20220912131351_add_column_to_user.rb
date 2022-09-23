class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :stripe_customer_id, :string
    add_column :users, :phone_number, :string
  end
end
