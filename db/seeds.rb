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


ryhan = User.create(username: "ryhan_chowdhury", email: "ryhan.chowdhury@flatironschool.com", password: "ryhan123")
becci = User.create(username: "becci_govert", email: "becci.govert@flatironschool.com", password: "becci123")
daniel = User.create(username: "daniel_rodriguez", email: "daniel.rodriguez@flatironschool.com", password: "daniel123")
kenny = User.create(username: "kenny_yang", email: "kenny.yang@flatironschool.com", password: "kenny123")
sean = User.create(username: "sean_huang", email: "sean.huangy@flatironschool.com", password: "sean123")

duck_water = Picture.create(image_url: "https://s26552.pcdn.co/wp-content/uploads/2018/03/dc_neighborhood_news-13.jpg", title: "Duck On Water", user: ryhan)
panda_rock = Picture.create(image_url: "https://wallpaperbrowse.com/media/images/wp-image-58683558-random-picture.jpg", title: "Panda Rocking", user: ryhan)
mutated_pepe = Picture.create(image_url: "https://s26552.pcdn.co/wp-content/uploads/2018/03/dc_neighborhood_news-13.jpg", title: "Mutated Pepe", user: becci)
hanging_panda = Picture.create(image_url: "https://i.pinimg.com/originals/0d/1a/2e/0d1a2e8c94f7d902b16340a35d51fd6f.jpg", title: "Hanging Panda", user: daniel)
pitbull = Picture.create(image_url: "http://www.dumpaday.com/wp-content/uploads/2018/03/photos-2-20.jpg", title: "Pitbull", user: kenny)
cow_tire = Picture.create(image_url: "http://www.dumpaday.com/wp-content/uploads/2018/06/random-pictures-10.jpg", title: "Cow In Tire", user: sean)

animal = Tag.create(name: "Animal")
funny = Tag.create(name: "Funny")
nature = Tag.create(name: "Nature")
weird = Tag.create(name: "Weird")
places = Tag.create(name: "Places")
people = Tag.create(name: "People")

comment_one = Comment.create(content: "Hilarious!", picture: panda_rock, user: becci)
comment_two = Comment.create(content: "Oh no!", picture: cow_tire, user: ryhan)
comment_three = Comment.create(content: "Comment!", picture: panda_rock, user: sean)
comment_four = Comment.create(content: "Yikes!", picture: pitbull, user: ryhan)

#picture tags
pt1 = PictureTag.create(picture: duck_water, tag: animal)
pt2 = PictureTag.create(picture: duck_water, tag: funny)
pt3 = PictureTag.create(picture: pitbull, tag: places)
pt4 = PictureTag.create(picture: cow_tire, tag: animal)
