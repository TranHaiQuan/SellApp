class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :color
      t.integer :size
      t.string :meaning
      t.string :material
      t.string :origin
      t.string :code
      t.integer :status
      t.string :price
      t.integer :sale, default: 0
      t.string :avatar
      t.text :description
      t.references :subcategory, foreign_key: true
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
