feature 'Viewing peeps' do
    scenario 'a user can see peeps' do
      connection = PG.connect(dbname: 'chitter_test')
      

      connection.exec("INSERT INTO peeps VALUES(1, 'The Election is coming up');")
      connection.exec("INSERT INTO peeps VALUES(2, 'Covid is still a thing');")

      visit('/peeps')

      expect(page).to have_content "The Election is coming up"
      expect(page).to have_content "Covid is still a thing"
    end
  end