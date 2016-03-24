class RemoveProductIdAndBuyQuantityFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :product_id, :integer
    remove_column :orders, :buy_quantity, :integer
  end
end
