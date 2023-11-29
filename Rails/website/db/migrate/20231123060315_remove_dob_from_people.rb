class RemoveDobFromPeople < ActiveRecord::Migration[7.1]
  def change
    remove_column :people, :dob, :string
  end
end
