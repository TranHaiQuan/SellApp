
User.create!(email: "admin1@gmail.com", password: "147852", password_confirmation: "147852", name: "admin1", is_admin: true)

Category.create!(name: "Vong tay", avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1510806894869_vong-tay-da-thach-anh-toc-do-vip-14ly.jpg", user_id: 1)
Category.create!(name: "Mat day", avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1517798416329_mat-day-ty-huu-mat-ho-nau-1a-to.jpg", user_id: 1)
Category.create!(name: "Vat pham phong thuy", avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1517798449921_1516242834251_cay_tai_loc.jpg", user_id: 1)

10.times do |n|
  sub = Subcategory.create!(name: "Vong tay #{Faker::Name.first_name}", category_id: 1)

  9.times do |m|
    sold = Random.rand(1..200)
    sold > 150 ? is_best_selling = true : is_best_selling = false
    price = Random.rand(100..500) * 1000
    sale = 0
    if Random.rand(0..20) == 20
      sale = Random.rand(1..4) * 10
      price = price * sale / 100
    end
    Product.create!(name: "#{sub.name} #{Faker::Name.name}", color: "Vang", size: 16, meaning: "Phu quy, giau sang", material: "Da mat ho", origin: "Viet Nam", code: "VT#{sub.id}_#{n}#{m}", status: 1, price: "#{price}", sale: sale, description: "#{Faker::Lorem.sentence(10)}", user_id: 1, subcategory_id: sub.id, category_id: 1, sold: sold, is_best_selling: is_best_selling, avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1509593181529_IMG_3245.jpg")
  end
end

10.times do |n|
  sub = Subcategory.create!(name: "Mat day #{Faker::Name.first_name}", category_id: 2)
  20.times do |m|
    sold = Random.rand(1..200)
    sold > 150 ? is_best_selling = true : is_best_selling = false
    price = Random.rand(100..500) * 1000
    sale = 0
    if Random.rand(0..20) == 20
      sale = Random.rand(1..4) * 10
      price = price * sale / 100
    end
    Product.create!(name: "#{sub.name} #{Faker::Name.name}", color: "Xanh mat ngoc", size: 5, meaning: "Phu quy, giau sang", material: "Da mat ho", origin: "Viet Nam", code: "MD#{sub.id}_#{n}#{m}", status: 1, price: "#{price}", sale: sale, description: "#{Faker::Lorem.sentence(10)}", user_id: 1, subcategory_id: sub.id, category_id: 2, sold: sold, is_best_selling: is_best_selling, avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1517402741647_mat-day-ho-ly-thach-anh-vang-2a-(3).jpg")
  end
end

10.times do |n|
  sub = Subcategory.create!(name: "Cay #{Faker::Name.first_name}", category_id: 3)
  14.times do |m|
    price = Random.rand(100..500) * 1000
    sale = 0
    if Random.rand(0..20) == 20
      sale = Random.rand(1..4) * 10
      price = price * sale / 100
    end
    sold = Random.rand(1..200)
    sold > 150 ? is_best_selling = true : is_best_selling = false
    Product.create!(name: "#{sub.name} #{Faker::Name.name}", color: "Xanh mat ngoc", size: 5, meaning: "Phu quy, giau sang", material: "Da mat ho", origin: "Viet Nam", code: "VPPT#{sub.id}_#{n}#{m}", status: 1, price: "#{price}", sale: sale, description: "#{Faker::Lorem.sentence(10)}", user_id: 1, subcategory_id: sub.id, category_id: 3, sold: sold, is_best_selling: is_best_selling, avatar: "http://mixi.lazisite.com/admin/resource/mixi/images/1516183962332_1-(1).jpg")
  end
end


