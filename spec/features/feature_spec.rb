require 'spec_helper'
require './birthday_app'

RSpec.feature "Entering information" do
  scenario "today is the user's birthday" do
    visit '/'
    fill_in 'name', with: 'Marianne'
    fill_in 'day', with: '19'
    select 'September', from: 'Month'
    click_button 'submit'
    expect(page).to have_content('Happy birthday Marianne!')
  end

  scenario "tells the use how long they have to wait until their birthday" do
    visit '/'
    fill_in 'name', with: 'Marianne'
    fill_in 'day', with: '23'
    select 'September', from: 'Month'
    click_button 'submit'
    expect(page).to have_content('Your birthday will be in 4 days, Marianne!')
  end
end
