require 'spec_helper'
require './birthday_app'


RSpec.feature "Entering information" do
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
