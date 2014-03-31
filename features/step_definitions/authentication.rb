Given /^I have a valid account$/ do
  createUser
end

Given /^I don't have a valid account$/ do
end

Then /^I should be able to login$/ do
  login_from_signin
end

Then /^I shouldn't be able to login$/ do
  visit new_user_session_path
  fill_in_my_details
  click_button 'Sign in'
  page.should have_content 'Invalid email or password'
end


