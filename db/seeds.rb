# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




#et la la mitraillette
5.times do
  city = City.create!(city_name: Faker::Address.city)
end

5.times do
  dog = Dog.create!(dog_name: Faker::Dog.name, owner: Faker::FunnyName.name, 
  	race: Faker::Dog.breed, alimentation: Faker::Food.dish, owner_phone_number: Faker::PhoneNumber.phone_number, city: City.all.sample)
end

5.times do
  dog_sitter = DogSitter.create!(first_name: Faker::FamilyGuy.character, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.phone_number, city: City.all.sample)
end

5.times do
  stroll = Stroll.create!(place: Faker::Witcher.location, dog_sitter: DogSitter.all.sample, )
end
