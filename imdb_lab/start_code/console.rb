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
