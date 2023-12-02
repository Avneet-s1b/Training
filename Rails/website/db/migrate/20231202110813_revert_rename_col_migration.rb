require_relative "20231202110459_rename_date_in_orders"

class RevertRenameColMigration < ActiveRecord::Migration[7.1]
  def change
    revert RenameDateInOrders
  end
end
