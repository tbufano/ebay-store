class RenameQuantityInOrders < ActiveRecord::Migration
  def change
    rename_column :orders, :quantity, :buy_quantity
  end
end
