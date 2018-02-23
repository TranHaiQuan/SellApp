class CreateBackgrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :backgrounds do |t|
      t.string :image
      t.references :infomation, foreign_key: true

      t.timestamps
    end
  end
end
