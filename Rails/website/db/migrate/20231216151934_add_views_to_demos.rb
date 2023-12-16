class AddViewsToDemos < ActiveRecord::Migration[7.1]
  def change
    add_column :demos, :viewers, :integer
  end
end
