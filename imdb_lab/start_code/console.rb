require_relative('models/star')
require_relative('models/casting')
require_relative('models/movie')

require("pry-byebug")

star1 = Star.new({
  "first_name" => "Tom"
  "last_name" => "Sawyer"
  })
star1.save()
star2 = Star.new({
  "first_name" => "James"
  "last_name" => "Bond"
  })
star2.save()
star3 = Star.new({
  "first_name" => "Liz"
  "last_name" => "Lemon"
  })
star3.save()

movie1 = Movie.new({
  "title" => "A James Bond movie"
  "genre" => "Action"
  })
movie1.save()
movie2 = Movie.new({
  "title" => "A Mickey Mouse movie"
  "genre" => "Animation"
  })
movie2.save()
movie3 = Movie.new({
  "title" => "When life gives you Liz"
  "genre" => "Romcom"
  })
movie3.save()

casting1 = Casting.new({
  "movie_id" => movie1.id
  "star_id" => star2.id
  "fee" => 100
  })
  casting1.save()
casting2 = Casting.new({
  "movie_id" => movie2.id
  "star_id" => star1.id
  "fee" => 500
  })
  casting2.save()
casting3 = Casting.new({
  "movie_id" => movie3.id
  "star_id" => star3.id
  "fee" => 333
  })
  casting2.save()
