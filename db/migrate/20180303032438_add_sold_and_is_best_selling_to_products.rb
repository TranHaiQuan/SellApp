class AddSoldAndIsBestSellingToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :sold, :integer
    add_column :products, :is_best_selling, :boolean
  end
end
