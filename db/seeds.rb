# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Default Admin Account
admin = User.create(email: 'dev@admin.com', password: 'password',
                    password_confirmation: 'password', admin: true)
admin.save

# Setting Up The Admin with a retailer and some products
retailer_1 = admin.retailers
                  .build(
                    name: 'Sustainanle CO.',
                    description: 'Just your friendly sustainable retailer trying to make a difference.')
retailer_1.save

retailer_2 = admin.retailers.build(
  name: 'Impossible Co.',
  description: 'Making vegan alternatives to your favorite types of meat.')
retailer_2.save

r1p1 = Product.create(
    retailer_id: 1,
    name: 'Vegan Leather',
    description: 'Leather made from plant material.', price: 34.11)
r1p1.save

# Default User
user = User.create(
  email: 'user@default.com',
  password: 'password',
  password_confirmation: 'password')
user.save


r2p1 = Product.create(
  retailer_id: 2,
  name: 'Impossible Burger',
  description: 'A delicious burger with none of the viscous harm on the cows!',
  price: 10.99)

r2p1.save

r2p2 = Product.create(
  retailer_id: 2,
  name: 'Impossible Sausage',
  description: 'Sausage made from plant based material, spiced to taste exactly like the real thing.',
  price: 10.99)

r2p2.save