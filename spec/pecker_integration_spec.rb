require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the peck and pick path to the pecker picker results', {:type => :feature}) do

  it('takes some prose from the user and asks them for one of the words in the prose and then counts how many times the word they picked appears in the prose') do
    visit('/')
    fill_in('prose', :with => 'peter')
    fill_in('pick', :with => 'peter')
    click_button('Submit')
    expect(page).to have_content("1")
  end

end
