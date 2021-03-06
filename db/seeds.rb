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
customer3 = Customer.create(name: "Bert", address: "Sesame Street", dob: "test", balance: 1000, img:"https://media.gq.com/photos/5707f229f325b48d09952e3c/master/w_800/bert.jpg")
customer4 = Customer.create(name: "Big Bird", address: "Sesame Street", dob: "test", balance: 100, img:"https://philanthropyforum.org/wp-content/uploads/2017/03/Big-Bird-web-400x400.jpg")
customer5 = Customer.create(name: "Calvin", address: "testing", dob: "test", balance: 1000)
customer6 = Customer.create(name: "Cookie Monster", address: "Sesame Street", dob: "test", balance: 100, img:"https://assets.marthastewart.com/styles/wmax-570/d19/cookie-monster-1116/cookie-monster-1116.png?itok=-mdEek-C")
customer7 = Customer.create(name: "Elmo", address:"Sesame Street", dob:"idk", balance: 1234, img:"https://pbs.twimg.com/profile_images/1092451830758547457/EqQ6Csl3_400x400.jpg")
customer8 = Customer.create(name: "Grover", address: "Seasme Street", dob: "who knows", balance: 4321, img:"https://www.who.int/roadsafety/decade_of_action/launch/grover_310px.jpg")
customer9 = Customer.create(name: "Janey Waney", address: "WeWorks", dob: "forever 21", balance: 0, img:"https://res.cloudinary.com/teepublic/image/private/s--LDRnavVZ--/t_Preview/b_rgb:191919,c_limit,f_jpg,h_630,q_90,w_630/v1484850982/production/designs/1124751_1.jpg")
car1 = Car.create(vin:"JHMBB61461C004723", year: 2001, make:"HONDA", model: "Prelude", color: "Blue", customer: customer1)
car2 = Car.create(vin:"JH4DA345XKS022633", year: 1989, make:"ACURA", model: "Integra", color: "White", customer: customer1)
car3 = Car.create(vin:"JT2JA81L4S0031182", year: 1994, make:"TOYOTA", model: "Supra", color: "White", customer: customer3)
car4 = Car.create(vin:"JT2JA81L4S0031388", year: 2004, make:"HONDA", model: "CR-V", color: "Blue", customer: customer4)
car5 = Car.create(vin:"JT2JA81L4S0031388", year: 2006, make:"HONDA", model: "S2000", color: "Black", customer: customer5)
car6 = Car.create(vin:"JT2JA81L4S0031188", year: 1999, make:"ACURA", model: "NSX", color: "Yellow", customer: customer6)
car7 = Car.create(vin:"JT2JA81L4S0031588", year: 1997, make:"MAZDA", model: "RX-8", color: "Red", customer: customer1 ,img:"https://avatarfiles.alphacoders.com/123/123711.jpg")
car8 = Car.create(vin:"JT2JA81L4S0031182", year: 1998, make:"NISSAN", model: "Skyline GT-R", color: "Blue", customer: customer2)
car9 = Car.create(vin:"JT2JA81L4S0031388", year: 1996, make:"NISSAN", model: "Maxima", color: "Black", customer: customer3)
car10 = Car.create(vin:"JFDSLFJLDkfjalsd", year: 3000, make:"GOAT", model: "Cheese", color: "Yellow", customer: customer9, img:"https://thumbor.thedailymeal.com/fa8y3u1d5nfi_ygehCdxh7ygewc=/840x565/https://www.thedailymeal.com/sites/default/files/tdm_slides/55401.jpg")
job1 = Job.create(user: user1, car: car1, quote: 100, job_name: "Oil Change")
job2 = Job.create(user: user1, car: car2, quote: 100, job_name: "Tune Up")
job3 = Job.create(user: user1, car: car3, quote: 100, job_name: "Turbo installation", notes: "MOAR BOOST PLS")
job4 = Job.create(user: user1, car: car4, quote: 100, job_name: "Exhaust", notes: "MORE NOISE")
job5 = Job.create(user: user1, car: car5, quote: 100, job_name: "Engine", notes: "Engine ded")
job6 = Job.create(user: user1, car: car6, quote: 100, job_name: "Inspection", notes: "it works")
job7 = Job.create(user: user1, car: car7, quote: 100, job_name: "Oil Change", notes: "ezpz")
job8 = Job.create(user: user1, car: car8, quote: 100, job_name: "Body Work", notes: "customer wants blue")
job9 = Job.create(user: user1, car:car10, quote: 0, job_name: "Melt that cheese")
