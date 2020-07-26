feature 'Viewing peeps' do
    scenario 'a user can see peeps' do
      
      Peep.create(url: "The Election is coming up")
      Peep.create(url: "Covid is still a thing")

      visit('/peeps')

      expect(page).to have_content "The Election is coming up"
      expect(page).to have_content "Covid is still a thing"
    end
  end