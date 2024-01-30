# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'book[title]', with: 'Final Fantasy'
    fill_in 'book[author]', with: 'Joshua Rosfield'
    fill_in 'book[published_date]', with: Date.new(2023, 6, 22)
    fill_in 'book[price]', with: 19.99
    fill_in 'book[publisher]', with: 'Square Enix'
    fill_in 'book[pages]', with: 563
    fill_in 'book[release_date]', with: Date.new(2023, 6, 23)
    click_on 'Add Book to Collection'
    expect(page).to have_content('Book was successfully added to collection...', wait: 1)
    expect(page).to have_content('Final Fantasy')
    expect(page).to have_content('Joshua Rosfield')
    expect(page).to have_content('2023-06-22')
    expect(page).to have_content('19.99')
    expect(page).to have_content('Square Enix')
    expect(page).to have_content('563')
    expect(page).to have_content('2023-06-23')
  end
end