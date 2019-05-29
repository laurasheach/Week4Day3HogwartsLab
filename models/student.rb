require_relative('../db/sql_runner')

class Student

  attr_reader :id, :first_name, :last_name, :house, :age


  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @first_name = options["first_name"]
    @last_name = options["last_name"]
    @house = options["house"]
    @age = options["age"].to_i
  end

  def save()
    sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@first_name, @last_name, @house, @age]
    results = SqlRunner.run(sql, values)
    @id = results[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM students"
    results = SqlRunner.run(sql)
    return results.map {|student| Student.new(student)}
  end

  def self.find(id)
    sql = "SELECT * FROM students where id =$1"
    values = [id]
    result = SqlRunner.run(sql, values)
    return Student.new(result[0])
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

end
