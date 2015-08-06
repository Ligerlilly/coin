require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe 'coin path', {type: :feature} do
  it 'takes cents from user and returns number of each coin assuming least number of coins' do
    visit '/'
    fill_in 'change', with: 159
    click_button 'Change!'
    expect(page).to have_content 'Q: 6 D: 0 N: 1 P: 4'
  end
end
