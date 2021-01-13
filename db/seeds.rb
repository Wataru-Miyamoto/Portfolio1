# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "管理者",
             mail: "WMUT.tech@gmail.com",
             password: "0123456789abcdef",
             password_confirmation: "0123456789abcdef",
             admin: true,
             editor: true)
