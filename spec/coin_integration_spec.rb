require 'capybara/rspec'
require './app'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe 'coin path', {type: :feature} do
  it 'takes cents from user and returns number of each coin assuming least number of coins' do
    visit '/'
    fill_in 'change', with: 159
    click_button 'Change!'
    expect(page).to have_content 'Quarters: 6 Dimes: 0 Nickles: 1 Pennies: 4'
  end
end
