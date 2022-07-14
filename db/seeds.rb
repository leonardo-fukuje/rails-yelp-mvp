puts "cleaning database"
Restaurant.destroy_all
puts 'database clean'

c = %w[chinese italian japanese french belgian]
15.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name ,
    address: Faker::Address.street_name,
    category: c.to_a.sample,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
  )
  puts "restaurant #{restaurant.id} is created"
end
