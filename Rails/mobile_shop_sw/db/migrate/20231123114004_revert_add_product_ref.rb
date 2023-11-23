require_relative "20231123110831_add_product_ref_to_customers"

class RevertAddProductRef < ActiveRecord::Migration[7.1]
  def change
    revert AddProductRefToCustomers
  end
end
