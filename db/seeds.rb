# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

restaurants = [
  { name: "Chinatown", address: "Berlin", phone_number: "01 23 45 67 89", category: "chinese" },
  { name: "Pizza Plaza", address: "Berlin", phone_number: "06 12 34 56 78", category: "italian" },
  { name: "Sushi Goku", address: "Cologne", phone_number: "03 12 34 76 78", category: "japanese" },
  { name: "Le Baguette", address: "Leipzig", phone_number: "01 98 76 54 32", category: "french" },
  { name: "Frites Forever", address: "Hamburg", phone_number: "02 98 76 54 32", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

puts "Created #{Restaurant.count} restaurants."
