class AddDetailsToPeople < ActiveRecord::Migration[7.1]
  def change
    add_column :people, :age, :string
    add_column :people, :dob, :string
  end
end
