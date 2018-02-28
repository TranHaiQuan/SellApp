class CreateNorms < ActiveRecord::Migration[5.0]
  def change
    create_table :norms do |t|
      t.string :icon
      t.string :name

      t.timestamps
    end
  end
end
