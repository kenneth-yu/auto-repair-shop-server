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
customer1 = Customer.create(name: "Calvin", address: "testing", dob: "test", balance: 0)
customer2 = Customer.create(name: "Yurman", address: "testing", dob: "test", balance: 0)
car1 = Car.create(vin:"JHMBB61461C004723", year: 2001, make:"HONDA", model: "Prelude", color: "blue", customer: customer1)
car2 = Car.create(vin:"JH4DA345XKS022633", year: 1989, make:"ACURA", model: "Integra", color: "white", customer: customer1)
car3 = Car.create(vin:"JT2JA81L4S0031188", year: 1994, make:"TOYOTA", model: "Supra", color: "white", customer: customer2)
job1 = Job.create(user: user1, car: car1, quote: 100, job_name: "Oil Change")
job2 = Job.create(user: user1, car: car2, quote: 100, job_name: "Tune Up")
job3 = Job.create(user: user1, car: car3, quote: 100, job_name: "Turbo installation", notes: "MOAR BOOST PLS")
