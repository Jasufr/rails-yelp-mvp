# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

# 10.times do
#   Restaurant.create({ name: Faker::Restaurant.name, category: CATEGORIES.sample, phone_number: Faker::PhoneNumber.phone_number_with_country_code, address: Faker::Address.full_address })
# end

Restaurant.all.each do |restaurant|
  5.times do
    Review.create!({ restaurant_id: restaurant.id, content: Faker::Restaurant.review, rating: (1..5).to_a.sample })
  end
end
