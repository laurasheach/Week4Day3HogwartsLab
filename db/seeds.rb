require_relative('../models/student')

# Student.delete_all()

student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 12
  })
student1.save()

student2 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Grainger",
  "house" => "Gryffindor",
  "age" => 13
  })
student2.save()

student3 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 12
  })
student3.save()

student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 12
  })
student4.save()
