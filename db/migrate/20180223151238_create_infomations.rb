class CreateInfomations < ActiveRecord::Migration[5.0]
  def change
    create_table :infomations do |t|
      t.string :email
      t.string :image_logo
      t.string :video_url
      t.string :consultancy_phone

      t.timestamps
    end
  end
end
