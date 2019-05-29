require_relative('../models/student')
require_relative('../models/house')

House.delete_all()
Student.delete_all()

house1 = House.new({
  "house" => "Gryffindor",
  "url" => "gryff_logo.jpg"
  })
house1.save()

house2 = House.new({
  "house" => "Ravenclaw",
  "url" => "rav_logo.jpg"
  })
house2.save()

house3 = House.new({
  "house" => "Hufflepuff",
  "url" => "huff_logo.jpg"
  })
house3.save()

house4 = House.new({
  "house" => "Slytherin",
  "url" => "sly_logo.jpg"
  })
house4.save()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 12
  })
student1.save()

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Grainger",
  "house_id" => house1.id ,
  "age" => 13
  })
student2.save()

student3 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house_id" => house1.id,
  "age" => 12
  })
student3.save()

student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house_id" => house4.id,
  "age" => 12
  })
student4.save()
