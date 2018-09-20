require 'spec_helper'
require './birthday_app'

RSpec.feature 'Testing homepage' do
  scenario 'greeting' do
    visit'/'
    expect(page).to have_content('Hello there!')
  end

  scenario 'ask for name' do
    visit '/'
    expect(page).to have_content("What's your name?")
  end

  scenario 'ask for birthday' do
    visit '/'
    expect(page).to have_content("When's your birthday?")
  end
end

RSpec.feature "Testing result" do
  scenario "today is the user's birthday" do
    allow(Date).to receive(:today).and_return('September 19')
    log_info
    expect(page).to have_content('Happy birthday Marianne!')
  end

  scenario "tells the use how long they have to wait until their birthday" do
    allow(Date).to receive(:today).and_return('September 15')
    log_info
    expect(page).to have_content('Your birthday will be in 4 days, Marianne!')
  end
end
