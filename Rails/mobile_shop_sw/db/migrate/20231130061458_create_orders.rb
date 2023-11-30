class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :date
      t.belongs_to :customer
      t.belongs_to :product
      t.timestamps
    end
  end
end
