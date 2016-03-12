# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

password = SecureRandom.base64
User.where(email: 'alice@example.com').first_or_create(password: password, password_confirmation: password, authentication_token: '1G8_s7P-V-4MGojaKD7a')
