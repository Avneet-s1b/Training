class AddMagzineRefToAds < ActiveRecord::Migration[7.1]
  def change
    add_reference :ads, :magzine, null: false, foreign_key: true
  end
end
