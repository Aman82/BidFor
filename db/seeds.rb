# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {
    first_name: 'Aman',
    last_name: 'Dhillon',
    username: 'Lion',
    email: 'aman@ga.com',
    email_confirmation: 'aman@ga.com',
    password: 'amaneverything',
    password_confirmation: 'amaneverything'
  }
  ]);

  cars = Car.create([
    {
   make: "Honda",
   model: "Accord",
   year: 2008,
   trim: "Sedan",
   mileage: 75000,
   transmission: "Auto",
   color: "Black",
   title: "clean" 
    },
    {
   make: "BMW",
   model: "328i",
   year: 2009,
   trim: "coupe",
   mileage: 68000,
   transmission: "manual", 
   color: "white",
   title: "clean"
    }
  ]);