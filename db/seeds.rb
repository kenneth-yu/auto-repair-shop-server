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
customer1 = Customer.create(name: "Calvin", address: "testing", dob: "test", balance: 10000)
customer2 = Customer.create(name: "Yurman", address: "testing", dob: "test", balance: 100)
car1 = Car.create(vin:"JHMBB61461C004723", year: 2001, make:"HONDA", model: "Prelude", color: "blue", customer: customer1)
car2 = Car.create(vin:"JH4DA345XKS022633", year: 1989, make:"ACURA", model: "Integra", color: "white", customer: customer1)
car3 = Car.create(vin:"JT2JA81L4S0031182", year: 1994, make:"TOYOTA", model: "Supra", color: "white", customer: customer2)
car4 = Car.create(vin:"JT2JA81L4S0031388188", year: 1994, make:"TOYOTA", model: "Supra", color: "white", customer: customer1)
car5 = Car.create(vin:"JT2JA81L4S0031388", year: 1994, make:"TOYOT", model: "Supra", color: "white", customer: customer2)
car6 = Car.create(vin:"JT2JA81L4S0031188", year: 1995, make:"TOYOTA", model: "Supra", color: "blue", customer: customer1)
car7 = Car.create(vin:"JT2JA81L4S0031588", year: 1996, make:"TOYOTA", model: "Sup", color: "green", customer: customer2)
car8 = Car.create(vin:"JT2JA81L4S00311828", year: 1997, make:"TOYOTAaaa", model: "Supra", color: "red", customer: customer1)
car9 = Car.create(vin:"JT2JA81L4S0031388", year: 1998, make:"TOYOTA", model: "Supra", color: "yellow", customer: customer2)
job1 = Job.create(user: user1, car: car1, quote: 100, job_name: "Oil Change")
job2 = Job.create(user: user1, car: car2, quote: 100, job_name: "Tune Up")
job3 = Job.create(user: user1, car: car3, quote: 100, job_name: "Turbo installation", notes: "MOAR BOOST PLS")
job3 = Job.create(user: user1, car: car4, quote: 100, job_name: "Exhaust", notes: "MORE NOISE")
job3 = Job.create(user: user1, car: car5, quote: 100, job_name: "Engine", notes: "Engine ded")
job3 = Job.create(user: user1, car: car6, quote: 100, job_name: "Inspection", notes: "it works")
job3 = Job.create(user: user1, car: car7, quote: 100, job_name: "Oil Change", notes: "ezpz")
job3 = Job.create(user: user1, car: car8, quote: 100, job_name: "Body Work", notes: "customer wants blue")
