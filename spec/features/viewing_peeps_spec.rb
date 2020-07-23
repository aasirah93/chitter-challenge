feature 'Viewing peeps' do
    scenario 'a user can see peeps' do
      visit('/peeps')
      expect(page).to have_content "The Election is coming up"
      expect(page).to have_content "Covid is still a thing"
    end
  end