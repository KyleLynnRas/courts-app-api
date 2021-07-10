# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Court.create(title: "Court One", latitude: 38.898550, longitude: -76.993020, indoor: false, fee: false, stars: 4, public: true, bathrooms: true, levelplay: "all", notes: "Really enjoyed playing here")
Court.create(title: "Court Two", latitude: 38.898550, longitude: -76.4556439, indoor: false, fee: false, stars: 5, public: true, bathrooms: false, levelplay: "all", notes: "Really enjoyed playing here")
Court.create(title: "Court Three", latitude: 38.8986013, longitude: -76.9931682, indoor: false, fee: false, stars: 4, public: true, bathrooms: true, levelplay: "all", notes: "Really enjoyed playing here")
Court.create(title: "Court Four", latitude: 38.8981325, longitude: -76.978834, indoor: false, fee: false, stars: 5, public: true, bathrooms: false, levelplay: "all", notes: "Really enjoyed playing here")