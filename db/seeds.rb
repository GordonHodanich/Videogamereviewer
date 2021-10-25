# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
Comment.destroy_all

puts "adding games"
smash = Game.create(title: "Super Smash Bros. Melee", description: "Nintendo's best all fighting eachother", rank: 9,
                    photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcvIZKv1We3n5Cp_ikF64SsHKhEWRPOZitLA&usqp=CAU")
league = Game.create(title: "League of Legends", description: "5 vs 5 action filled strategy game", rank: 6, photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuMNjPqy8klmxZ65xi4keoW-m4RYt5VhIlCw&usqp=CAU")
ghosts = Game.create(title: "Call of Duty: Ghosts", description: "Not sure about this game? Do you fights ghosts?",
                     rank: 3, photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt_gLVkXNRAmya3GXM8HBT25JLZaWunognow&usqp=CAU")
odyssey = Game.create(title: "Super Mario Odyssey", description: "Crazy plumber runs around with a possessed hat",
                      rank: 10, photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdxRtA8PhbMSU9bZBJgoaHDJz707ztC3bxsQ&usqp=CAU")

puts "adding comments"
Comment.create(game: smash, user_id: 5, comment: "Tried playing against ice climbers, made me cry. Fun game though.")
Comment.create(game: smash, user_id: 7, comment: "Crushed some random person playing the ice climbers, life is good.")
Comment.create(game: league, user_id: 8, comment: "Talk about a toxic environment")
Comment.create(game: league, user_id: 9, comment: "Fun but depends on what kind of team you get on")
Comment.create(game: league, user_id: 10,
               comment: "Random game modes keep this game fresh, as well as a good balancing team")
Comment.create(game: ghosts, user_id: 5,
               comment: "these guys hit control c then control v and just renamed the game, trash")
Comment.create(game: ghosts, user_id: 6, comment: "I like this game")
Comment.create(game: odyssey, user_id: 9, comment: "The movement in the game is awesome and very fluid")
Comment.create(game: odyssey, user_id: 10,
               comment: "Just watched someone speed run this game and thought it looked easy, I was wrong")
