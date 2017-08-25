# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rand(10..20).times do
  patient = Patient.create(email: Faker::Internet.email, password: 'password')

  10.times do
    Post.create(title: Faker::Lorem.sentence, content: Faker::Lorem.sentence, patient_id: patient)
  end
end
