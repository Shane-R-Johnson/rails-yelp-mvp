puts "Destroying all restaurants"
Restaurant.destroy_all

puts "Creating 10 new restaurants..."

10.times do
  rest = Restaurant.create!(
    name: Faker::TvShows::FamilyGuy.unique.character,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )

  puts "* #{rest.name}"
end

puts "DONE!"
