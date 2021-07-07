# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
DealerShip.destroy_all

dealer1 = DealerShip.create!(name: 'Dealer1', address: '4200 high st', open_weekends: true, years_open: 42)
dealer2 = DealerShip.create!(name: 'Dealer2', address: '1234 fake st', open_weekends: true, years_open: 12)
dealer3 = DealerShip.create!(name: 'Dealer3', address: '6969 date st', open_weekends: false, years_open: 69)
dealer4 = DealerShip.create!(name: 'Dealer4', address: '2020 corona blvd', open_weekends: false, years_open: 20)
dealer5 = DealerShip.create!(name: 'Dealer5', address: '1600 pennsylvania ave', open_weekends: true, years_open: 16)
dealer6 = DealerShip.create!(name: 'Dealer6', address: '5050 chance cr', open_weekends: false, years_open: 50)

dealer1.cars.create!(model: 'WRX', make: 'Subaru', year: 2013, under_100k_miles: true)
dealer1.cars.create!(model: 'Outback', make: 'Subaru', year: 1998, under_100k_miles: false)

dealer2.cars.create!(model: 'MDX', make: 'Acura', year: 2006, under_100k_miles: false)
dealer2.cars.create!(model: 'MLR', make: 'Acura', year: 2021, under_100k_miles: true)

dealer3.cars.create!(model: 'x1', make: 'BMW', year: 2017, under_100k_miles: true)
dealer3.cars.create!(model: 'm3', make: 'BMW', year: 1987, under_100k_miles: false)

dealer4.cars.create!(model: 'a7', make: 'Audi', year: 2009, under_100k_miles: true)
dealer4.cars.create!(model: 'r8', make: 'Audi', year: 2019, under_100k_miles: true)

dealer5.cars.create!(model: 'Konna', make: 'Hyundai', year: 2000, under_100k_miles: false)
dealer5.cars.create!(model: 'Accent', make: 'Hyundai', year: 2015, under_100k_miles: true)

dealer6.cars.create!(model: 'model s', make: 'Tesla', year: 2012, under_100k_miles: true)
dealer6.cars.create!(model: 'cybertruck', make: 'Tesla', year: 2022, under_100k_miles: true)