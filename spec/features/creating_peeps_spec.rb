feature 'Adding a new peep' do
  scenario 'A user can add a peep to Chitter' do
    visit('peeps/new')
    fill_in('url', with: 'things will improve')
    click_button('Submit')

    expect(page).to have_content 'things will improve'
  end
end