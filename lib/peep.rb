require 'pg'

class Peep
  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'chitter_test')
    else
      connection = PG.connect(dbname: 'chitter')
    end

    result = connection.exec('SELECT * FROM peeps')
    result.map { |peep| peep['url'] }

  end

   def self.create(url:)
    if ENV['RACK_ENV'] == 'test'
        connection = PG.connect(dbname: 'chitter_test')
      else
        connection = PG.connect(dbname: 'chitter')
      end

      connection.exec("INSERT INTO peeps (url) VALUES('#{url}')")
  end 
  end

