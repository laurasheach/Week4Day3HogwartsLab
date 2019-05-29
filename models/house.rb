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

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

end
