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
customer1 = Customer.create(name: "Kenny", address: "testing", dob: "test", balance: 1000)
customer2 = Customer.create(name: "Yurman", address: "testing", dob: "test", balance: 100)
customer3 = Customer.create(name: "Bert", address: "testing", dob: "test", balance: 1000)
customer4 = Customer.create(name: "Big Bird", address: "testing", dob: "test", balance: 100)
customer5 = Customer.create(name: "Calvin", address: "testing", dob: "test", balance: 1000)
customer6 = Customer.create(name: "Cookie Monster", address: "testing", dob: "test", balance: 100)
car1 = Car.create(vin:"JHMBB61461C004723", year: 2001, make:"HONDA", model: "Prelude", color: "Blue", customer: customer1)
car2 = Car.create(vin:"JH4DA345XKS022633", year: 1989, make:"ACURA", model: "Integra", color: "White", customer: customer1)
car3 = Car.create(vin:"JT2JA81L4S0031182", year: 1994, make:"TOYOTA", model: "Supra", color: "White", customer: customer3)
car4 = Car.create(vin:"JT2JA81L4S0031388", year: 2004, make:"HONDA", model: "CR-V", color: "Blue", customer: customer4)
car5 = Car.create(vin:"JT2JA81L4S0031388", year: 2006, make:"HONDA", model: "S2000", color: "Black", customer: customer5)
car6 = Car.create(vin:"JT2JA81L4S0031188", year: 1999, make:"ACURA", model: "NSX", color: "Yellow", customer: customer6)
car7 = Car.create(vin:"JT2JA81L4S0031588", year: 1997, make:"MAZDA", model: "RX-8", color: "Yellow", customer: customer1)
car8 = Car.create(vin:"JT2JA81L4S0031182", year: 1998, make:"NISSAN", model: "Skyline GT-R", color: "Blue", customer: customer2)
car9 = Car.create(vin:"JT2JA81L4S0031388", year: 1996, make:"NISSAN", model: "Maxima", color: "Black", customer: customer3)
job1 = Job.create(user: user1, car: car1, quote: 100, job_name: "Oil Change")
job2 = Job.create(user: user1, car: car2, quote: 100, job_name: "Tune Up")
job3 = Job.create(user: user1, car: car3, quote: 100, job_name: "Turbo installation", notes: "MOAR BOOST PLS")
job4 = Job.create(user: user1, car: car4, quote: 100, job_name: "Exhaust", notes: "MORE NOISE")
job5 = Job.create(user: user1, car: car5, quote: 100, job_name: "Engine", notes: "Engine ded")
job6 = Job.create(user: user1, car: car6, quote: 100, job_name: "Inspection", notes: "it works")
job7 = Job.create(user: user1, car: car7, quote: 100, job_name: "Oil Change", notes: "ezpz")
job8 = Job.create(user: user1, car: car8, quote: 100, job_name: "Body Work", notes: "customer wants blue")
