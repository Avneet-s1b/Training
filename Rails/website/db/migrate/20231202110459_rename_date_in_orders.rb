class RenameDateInOrders < ActiveRecord::Migration[7.1]
  def change
    rename_column(:orders, :date, :ordered_date)
  end
end
