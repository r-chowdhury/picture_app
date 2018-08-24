# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Picture.delete_all
Tag.delete_all
Comment.delete_all
PictureTag.delete_all


ryhan = User.create(username: "ryhan_chowdhury", email: "ryhan.chowdhury@example.com", password: "ryhan123")
becci = User.create(username: "becci_govert", email: "becci.govert@example.com", password: "becci123")
