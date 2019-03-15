# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Customer.destroy_all
Car.destroy_all
Job.destroy_all

user1 = User.create(username:"test", password: "test")
customer1 = Customer.create(name: "test", address: "testing", dob: "test", balance: 0)
car1 = Car.create(vin:"JHMBB61461C004723", year: 2001, make:"HONDA", model: "Prelude", color: "blue", customer: customer1)
job1 = Job.create(user: user1, car: car1, quote: 100, job_name: "Oil Change")
