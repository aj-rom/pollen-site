# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create!(email: 'ajiellodev@gmail.com', provider: 'github', uid: 7357807)

r1 = admin.retailers.build(name: 'Sustainable Co',
                      description: 'A sustainable alternative to your average carbon polluting products.')
r1.save
r1.products.build(name: 'Test', price: 34.65, description: 'Just a description of this product.')

r1.save