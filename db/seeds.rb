# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#ownership2 = VehicleModule::Ownership.create(vehicle: vehicle2, owner: owner2)
# options = [
#   { name: "it's spam" },
#   { name: "Nuditity or sexual activity" },
#   { name: "Hate speech or symbols" },
#   { name: "Violence or dangerous organisations" },
#   { name: "False information" },
#   { name: "Scam or fraud" },
#   { name: "Suicide or self-injury" },
#   { name: "Bullying or harassment" },
#   { name: "Intellectual property violation" },
#   { name: "Something else" }
# ]
#VehicleModule::ReportContentOption.find_or_create_by(options)


#VehicleModule::ReportContentOption.find_or_create_by(name:"it's spam")
VehicleModule::Post.create(
  name: 'Post 1',
  description: 'Description for Post 1',
  img_url: 'https://example.com/image1.jpg'
)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?