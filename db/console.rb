require_relative('../models/student')
require_relative('../models/house')

require('pry')


student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 12
  })

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Grainger",
  "house" => "Gryffindor",
  "age" => 13
  })

student3 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 12
  })

student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 12
  })

all_students = Student.all()

house1 = House.new({
  "house" => "Gryffindor",
  "url" => "gryff_logo.jpg"
  })

house2 = House.new({
  "house" => "Ravenclaw",
  "url" => "rav_logo.jpg"
  })

house3 = House.new({
  "house" => "Hufflepuff",
  "url" => "huff_logo.jpg"
  })

house4 = House.new({
  "house" => "Slytherin",
  "url" => "sly_logo.jpg"
  })

all_houses = House.all()  

binding.pry
nil
