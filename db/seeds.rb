
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# user table  [username,email,password, first_name, last_name, garages]
ben = User.create(username: 'bentucker', email: 'bentucker@garage.com', password: "passowrd", first_name: "Ben", last_name: "Tucker")
adam = User.create(username: 'adamsmith', email: 'adamsmith@gmail.com', password: "passowrd", first_name: "Adam", last_name: "Smith")
john = User.create(username: 'johnlong', email: 'johnlong@garage.com', password: "passowrd", first_name: "John", last_name: "Long")
kim = User.create(username: 'kimstevenson', email: 'ks925@yahoo.com', password: "passowrd", first_name: "Kim", last_name: "Stevenson")
albert = User.create(username: 'albr', email: 'mrbrownAl@hotmail.com', password: "passowrd", first_name: "Albert", last_name: "Brown")
marlin = User.create(username: 'theorange', email: 'morange88@tmobile.com', password: "passowrd", first_name: "Marlin", last_name: "Orange")

#garage table. [name, location, running_capacity, customers,employees, special_equipment, tire_installation, service_any_vehicle, user_id]
Garage.create(name: "Master Tech", location: "Alpharetta, GA", running_capacity:"5", special_equipment: true, tire_installation: false, service_any_vehicle: true, user_id: 1)
Garage.create(name: "Speed Tire", location: "Duluth, GA", running_capacity:"8", special_equipment: false, tire_installation: true, service_any_vehicle: true, user_id: 2)




#customers table [first_name, last_name, email, gender, vehicles]
Customer.create(first_name: "Rose", last_name: "Benson",email: "rosedesigner@yahoo.com",  garage_id: 2)
Customer.create(first_name: "Ali", last_name: "Park",email: "Apark@gmail.com",  garage_id: 2)
Customer.create(first_name: "Steve", last_name: "Tall",email: "stall@yahoo.com", garage_id: 1)
Customer.create(first_name: "Allison", last_name: "Zricvh",email: "azrc@hotmail.com", garage_id: 1)
Customer.create(first_name: "Jim", last_name: "Carter",email: "JC125@yahoo.com",  garage_id: 2)
Customer.create(first_name: "Donald", last_name: "Duck",email: "dd456@aol.com",  garage_id: 1)
Customer.create(first_name: "Mark", last_name: "Kimb",email: "mkb99@gmail.com",  garage_id: 2)
Customer.create(first_name: "Jason", last_name: "Mason",email: "jmason@gmail.com",  garage_id: 2)
Customer.create(first_name: "Joel", last_name: "Timber",email: "timberj@aol.com",garage_id: 2)
Customer.create(first_name: "Beth", last_name: "Bethany",email: "bbfashion@att.com",  garage_id: 1)
Customer.create(first_name: "Olli",  last_name: "Martinez",email: "omtinez@tmobile.com",  garage_id: 1)
Customer.create(first_name: "Mike", last_name: "Miller",email: "mm2019@yahoo.com", garage_id: 1)



#garage_customers table [garage_id, customer_id]


#vehicles table[make, model,trim: year, mileage, license_plate, color, type,  customer_id]
Vehicle.create(make: "Toyota", model: "Sienna", trim: "SE" year: 2010, mileage: 125434, license_plate: "MTB425", color: "Silver" , type: "Minivan",  customer_id: 1)
Vehicle.create(make: "Honda", model: "Civic", trim: "Lx" year: 2011, mileage: 220573, license_plate: "PJL2018", color: "White" , type: "Sedan",  customer_id: 3)
Vehicle.create(make: "Nissan", model: "Pathfinder", trim: "SE" year: 2008, mileage: 65434, license_plate: "HTG3029", color: "Brown" , type: "SUV",  customer_id: 5)
Vehicle.create(make: "Gmc", model: "Acadia", trim: "Base" year: 2014, mileage: 85467, license_plate: "TDR304", color: "Black" , type: "SUV",  customer_id: 2)
Vehicle.create(make: "Mercedes-Benz", model: "E350", trim: "Limited" year: 2016, mileage: 12436, license_plate: "TAN3098", color: "Light Blue" , type: "Sedan",  customer_id: 1)
Vehicle.create(make: "Ford", model: "F150", trim: "Lariat" year: 2010, mileage: 167989, license_plate: "PRS2045", color: "Red" , type: "Pickup-Truck",  customer_id: 4)
Vehicle.create(make: "Kia", model: "Soul", trim: "SE" year: 2013, mileage: 155678, license_plate: "PMD234", color: "Green" , type: "Utiliy",  customer_id: 5)
Vehicle.create(make: "Chevrolet", model: "Cruze", trim: "LE" year: 2011, mileage: 126534, license_plate: "PRM565", color: "Blue" , type: "Sedan",  customer_id: 4)
Vehicle.create(make: "Hyundai", model: "Sonata", trim: "SE" year: 2010, mileage: 455643, license_plate: "GRD5953", color: "White" , type: "Sedan",  customer_id: 3)
Vehicle.create(make: "Honda", model: "Pilot", trim: "EX-L" year: 2016, mileage: 5434, license_plate: "HGT3025", color: "Blue" , type: "SUV",  customer_id: 2)
Vehicle.create(make: "Mazda", model: "6", trim: "Base" year: 2014, mileage: 65437, license_plate: "ARM3087", color: "Silver" , type: "Hatchback",  customer_id: 2)
Vehicle.create(make: "Subaru", model: "Imprezza", trim: "Base" year: 2015, mileage: 35434, license_plate: "MTB825", color: "Black" , type: "Sedan",  customer_id: 5)
Vehicle.create(make: "Toyota", model: "Prius", trim: "C" year: 2010, mileage: 4534, license_plate: "MTK495", color: "White" , type: "Sedan",  customer_id: 3)
Vehicle.create(make: "Honda", model: "Accord", trim: "EX-L" year: 2010, mileage: 14534, license_plate: "MGYO56", color: "Silver" , type: "N/A",  customer_id: 8)
Vehicle.create(make: "Nissan", model: "Murano", trim: "SE" year: 2010, mileage: 14534, license_plate: "LKH895", color: "Silver" , type: "N/A",  customer_id: 9)
Vehicle.create(make: "Gmc", model: "Sierra", trim: "SE" year: 2010, mileage: 1345234, license_plate: "KJH685", color: "Silver" , type: "N/A",  customer_id: 4)
Vehicle.create(make: "Mercedes-Benz", model: "C63", trim: "AMG" year: 2010, mileage: 125456, license_plate: "MJH6523", color: "Silver" , type: "N/A",  customer_id:2)
Vehicle.create(make: "Ford", model: "Fiesta", trim: "SE" year: 2010, mileage: 12564, license_plate: "PYH3456", color: "Silver" , type: "N/A",  customer_id: 1)
Vehicle.create(make: "BMW", model: "335", trim: "I" year: 2008, mileage: 126784, license_plate: "GRD345", color: "Silver" , type: "Sedan",  customer_id: 8
Vehicle.create(make: "Chevrolet", model: "Malibu", trim: "SE" year: 2010, mileage: 123684, license_plate: "NEBL567", color: "Silver" , type: "SUV",  customer_id: 9)
Vehicle.create(make: "Mercury", model: "Mountainer", trim: "SE" year: 2004, mileage: 159845, license_plate: "WSDA645", color: "Silver" , type: "SUV",  customer_id: 2)
Vehicle.create(make: "Honda", model: "Fit", trim: "Base" year: 2010, mileage: 1225674, license_plate: "MUT8655", color: "Silver" , type: "Sedan",  customer_id: 3)
Vehicle.create(make: "Mazda", model: "3", trim: "Base" year: 2010, mileage: 19984, license_plate: "JHG8766", color: "Silver" , type: "SUV",  customer_id: 1)
Vehicle.create(make: "Subaru", model: "Forester", trim: "Base" year: 2010, mileage: 156544, license_plate: "KUT5673", color: "Silver" , type: "Sedan",  customer_id: 16






#service tables [name, description, total_cost]
Service.create(type: "Air Condition", description: "Drain, flush, refill", total_cost: 150, vehicle_id: 1)

#emaployees table[first_name, last_name, age, gender, experience, skills, garage_id]







