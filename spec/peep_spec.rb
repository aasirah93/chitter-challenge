require 'peep'

  describe '.all' do
    it 'returns a list of peeps' do
      connection = PG.connect(dbname: 'chitter_test')
      
      connection.exec("INSERT INTO peeps (url) VALUES ('The Election is coming up');")
      connection.exec("INSERT INTO peeps (url) VALUES('Covid is still a thing');")


      peeps = Peep.all

      expect(peeps).to include('The Election is coming up')
      expect(peeps).to include('Covid is still a thing')
  
  end

   describe '.create' do
    it 'creates a new peep' do
      Peep.create(url: 'things will improve')

      expect(Peep.all).to include 'things will improve'
  end
end
end
