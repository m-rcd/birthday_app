def log_info
  visit '/'
  fill_in 'name', with: 'Marianne'
  fill_in 'day', with: '19'
  select 'September', from: 'Month'
  click_button 'submit'
end
