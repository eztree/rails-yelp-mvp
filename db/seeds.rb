puts "Cleaning the db ๐งน"
Restaurant.destroy_all

category = ["chinese", "italian", "japanese", "french", "belgian"]

puts "Creating restaurants... ๐ฝ"

10.times do
  puts "Creating a new restaurant"
  attributes = { name: Faker::Food.ingredient,
                 address: Faker::Address.street_address,
                 phone_number: Faker::PhoneNumber.cell_phone,
                 category: category.sample }
  restaurant = Restaurant.create!(attributes)
  puts "Created Restaurant #{restaurant.name}"
end

puts "Done with all seeds ๐ค"

