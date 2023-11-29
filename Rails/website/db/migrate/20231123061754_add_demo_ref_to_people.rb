class AddDemoRefToPeople < ActiveRecord::Migration[7.1]
  def change
    add_reference :people, :demo, null: false, foreign_key: true
  end
end
