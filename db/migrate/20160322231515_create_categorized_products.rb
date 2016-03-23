class CreateCategorizedProducts < ActiveRecord::Migration
  def change
    create_table :categorized_products do |t|
      t.integer :category_id
      t.integer :product_id

      t.timestamps
    end
  end
end
