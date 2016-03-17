class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, :precision => 6, :scale => 2
      t.string :image
      t.string :description
      t.integer :views
      t.integer :watchers
      t.decimal :shipping_cost, :precision => 6, :scale => 2
      t.decimal :sell_minimum, :precision => 6, :scale => 2
      t.string :title
      t.integer :quantity

      t.timestamps
    end
  end
end