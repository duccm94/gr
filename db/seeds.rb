# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! name: "admin", email: "admin@gmail.com", password: "123456",
  gender: 1, role: "admin"

User.create! name: "admin2", email: "admin2@gmail.com", password: "123456",
  gender: 1, role: "admin"

User.create! name: "trainer", email: "trainer@gmail.com", password: "123456",
  gender: 1, role: "trainer"

User.create! name: "trainer2", email: "trainer2@gmail.com", password: "123456",
  gender: 1, role: "trainer"

User.create! name: "trainee1", email: "trainee1@gmail.com", password: "123456",
  gender: 1, role: "trainee"

User.create! name: "trainee2", email: "trainee2@gmail.com", password: "123456",
  gender: 1, role: "trainee"

User.create! name: "trainee3", email: "trainee3@gmail.com", password: "123456",
  gender: 1, role: "trainee"