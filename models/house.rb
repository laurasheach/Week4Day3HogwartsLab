require_relative('../db/sql_runner')

class House

  attr_reader :id, :house, :url

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @house = options['house']
    @url = options['url']
  end

  def save()
    sql = "INSERT INTO houses (house, url) VALUES ($1, $2) RETURNING id"
    values = [@house, @url]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    result = SqlRunner.run(sql)
    return result.map {|house| House.new(house)}
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    result = SqlRunner.run(sql, values)
    return House.new(result[0])
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

end
