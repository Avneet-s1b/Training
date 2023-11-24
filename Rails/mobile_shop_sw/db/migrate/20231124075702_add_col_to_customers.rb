class AddColToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :start, :integer
    add_column :customers, :end, :integer
  end
end
