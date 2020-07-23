require 'peep'

describe Peep do
  describe '.all' do
    it 'returns all peeps' do
      peeps = Peep.all
      
      expect(peeps).to have_content "The Election is coming up"
      expect(peeps).to have_content "Covid is still a thing"
  
  end
  end
end