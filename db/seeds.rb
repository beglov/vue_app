# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create!(email: 'admin@test.com', password: '1q2w3e4r')
Client.create!(email: 'client1@test.com', password: '1q2w3e4r', fullname: 'fullname 1', phone: '1111')
Client.create!(email: 'client2@test.com', password: '1q2w3e4r', fullname: 'fullname 2', phone: '2222')
Client.create!(email: 'client3@test.com', password: '1q2w3e4r', fullname: 'fullname 3', phone: '3333')
