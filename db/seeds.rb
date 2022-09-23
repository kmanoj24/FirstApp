# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 8.times do
# 	Catagory.create(title: Faker::Types.rb_string)
# end

# categories_ids = Catagory.ids

# categories_ids.each do |category_id|
# 	(3..5).to_a.sample.times do
# 		SubCatagory.create(color: Faker::Color.color_name, catagory_id: category_id)
# 	end
# end

# Catagory.all.each do |category|
# 	category.sub_catagories.each do |sub_category|
# 		(10..15).to_a.sample.times do
# 			Product.create(
# 				title: Faker::Commerce.product_name, 
# 				description: Faker::Lorem.paragraph, 
# 				price: Faker::Number.number(digits: 3),
# 				catagory_id: category.id,
# 				sub_catagory_id: sub_category.id)
# 		end
# 	end
# end

# Product.all.each do |product|
# 	product.update(image: Faker::LoremFlickr.unique.image)
# 	Faker::UniqueGenerator.clear
# end