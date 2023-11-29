class AddPartNumberToProducts < ActiveRecord::Migration[7.1]
  def change
    change_column_null :demos, :name, false
  end
end
