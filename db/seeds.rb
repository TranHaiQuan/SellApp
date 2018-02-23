
User.create!(email: "admin1@gmail.com", password: "147852", password_confirmation: "147852", name: "admin1", is_admin: true)

Category.create!(name: "Vong tay", avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1510806894869_vong-tay-da-thach-anh-toc-do-vip-14ly.jpg", user_id: 1)
Category.create!(name: "Mat day", avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1517798416329_mat-day-ty-huu-mat-ho-nau-1a-to.jpg", user_id: 1)
Category.create!(name: "Vat pham phong thuy", avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1517798449921_1516242834251_cay_tai_loc.jpg", user_id: 1)

10.times do |n|
  sub = Subcategory.create!(name: "Vong tay #{Faker::Name.first_name}", category_id: 1)
  10.times do |m|
    Product.create!(name: "#{sub.name} #{Faker::Name.name}", color: "Vang", size: 16, meaning: "Phu quy, giau sang", material: "Da mat ho", origin: "Viet Nam", code: "VT#{m}", status: 1, price: "120.000", sale: 0, description: "#{Faker::Lorem.sentence(10)}", user_id: 1, subcategory_id: sub.id, category_id: 1)
  end
end

10.times do |n|
  sub = Subcategory.create!(name: "Mat day #{Faker::Name.first_name}", category_id: 2)
  10.times do |m|
    Product.create!(name: "#{sub.name} #{Faker::Name.name}", color: "Xanh mat ngoc", size: 5, meaning: "Phu quy, giau sang", material: "Da mat ho", origin: "Viet Nam", code: "MD#{m}", status: 1, price: "120.000", sale: 0, description: "#{Faker::Lorem.sentence(10)}", user_id: 1, subcategory_id: sub.id, category_id: 2)
  end
end

10.times do |n|
  sub = Subcategory.create!(name: "Cay #{Faker::Name.first_name}", category_id: 3)
  10.times do |m|
    Product.create!(name: "#{sub.name} #{Faker::Name.name}", color: "Xanh mat ngoc", size: 5, meaning: "Phu quy, giau sang", material: "Da mat ho", origin: "Viet Nam", code: "MD#{m}", status: 1, price: "120.000", sale: 0, description: "#{Faker::Lorem.sentence(10)}", user_id: 1, subcategory_id: sub.id, category_id: 3)
  end
end


