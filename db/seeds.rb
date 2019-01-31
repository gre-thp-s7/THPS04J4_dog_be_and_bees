# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



course1 = Course.create!(title: "sex", description: "all about practice")
course2 = Course.create!(title: "bicycle", description: "all about pédale")

lesson1 = Lesson.new(title: "how to eat pussy", body: "you got hand, mouse, ears, and sometimes eyes, use them, combine them !", course_id: 1)
lesson1.save
lesson2 = Lesson.create!(title: "why we says loosing virginity", body: "everybody exactly know where it had gone !", course_id: 1)
lesson3= Lesson.new(title: "how to choose your bycicle", body: "all about money", course_id: 2)
lesson3.save
lesson4 = Lesson.create!(title: "gear does matter?", body: "all about pleasure", course_id: 2)


#et la la mitraillette
20.times do
  city = City.create!(title: Faker::Address.city)
end

50.times do
  dog = Dog.create!(dog_name: Faker::Dog.name, owner: Faker::FunnyName.name, 
  	race: Faker::Dog.breed, alimentation: Faker::Food.dish, owner_phone_number: Faker::PhoneNumber.phone_number, city_id: City.all.sample)
end

15.times do
  dog_sitter = DogSitter.create!(first_name: Faker::FamilyGuy.character, last_name: Faker::Name.last_name, phone_number: Faker::PhoneNumber.phone_number, city_id: City.all.sample)
end

100.times do
  stroll = Stroll.create!(place: Faker::Witcher.location, body: Faker::NewGirl.quote, dog_sitter: DogSitter.all.sample)
end
