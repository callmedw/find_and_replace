require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('find_and_replace', {:type => :feature}) do
  it('the user enters a sentence and a word to insert in place of another word') do
    visit('/')
    fill_in('sentence', :with => 'green eggs and ham')
    fill_in('find', :with => 'eggs')
    fill_in('replace', :with => 'toast')
    click_button('Replace!')
    expect(page).to have_content('Green toast and ham')
  end
end
