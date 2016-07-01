require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the peck and pick path to the pecker picker results', {:type => :feature}) do

  it('takes one word from the user and asks them for one of the words in the prose and then counts how many times the word they picked appears in the prose') do
    visit('/')
    fill_in('prose', :with => 'peter')
    fill_in('pick', :with => 'peter')
    click_button('submit')
    expect(page).to have_content("1")
  end

  it('takes some prose from the user and asks them for one of the words in the prose and then counts how many times the word they picked appears in the prose') do
    visit('/')
    fill_in('prose', :with => 'woody\'s pecker picker ')
    fill_in('pick', :with => 'picker')
    click_button('submit')
    expect(page).to have_content("1")
  end

  it('takes some prose from the user with punctuation and asks them for one of the words in the prose and then counts how many times the word they picked appears in the prose') do
    visit('/')
    fill_in('prose', :with => 'peter piper pecked! a pack of peppers how many packs did peter pecked?')
    fill_in('pick', :with => 'pecked')
    click_button('submit')
    expect(page).to have_content("2")
  end

  it('takes some prose from the user and asks them for one of the words in the prose and then counts how many times the word they picked appears in the prose') do
    visit('/')
    fill_in('prose', :with => 'Peter piper pecked a pack of peppers how many packs did peter pecked')
    fill_in('pick', :with => 'pecker')
    click_button('submit')
    expect(page).to have_content("0")
  end

end
