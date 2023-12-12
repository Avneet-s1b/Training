class CreateMagzines < ActiveRecord::Migration[7.1]
  def change
    create_table :magzines do |t|
      t.string :name

      t.timestamps
    end
  end
end
