Given /^I am a guest$/ do
end

Then /^I can register as a reader$/ do
  visit new_user_registration_path
  fill_in 'Email', :with=>'xxx@gmail.com'
  fill_in 'Password', :with=>'12345678'
  fill_in 'Password confirmation', :with=>'12345678'
  click_on 'Sign Up'
  page.should have_content("You have successfully registed up!")
  page.should_not have_content("Edit")
end

