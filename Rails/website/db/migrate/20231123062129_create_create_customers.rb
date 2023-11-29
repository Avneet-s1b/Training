class CreateCreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :create_customers do |t|
      t.string :orders

      t.timestamps
    end
  end
end
