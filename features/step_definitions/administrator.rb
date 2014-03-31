Given /^I am logined in as administrator$/ do 
  createUser(:administrator)  
  login_from_signin 
end

Then /^I can manage articles$/ do 
  click_on 'New'
  page.should have_content 'New Article'
  click_button 'Update Article'
  
  #show the article
  click_button 'Edit'
  page.should have_content 'Edit Article'
  click_button 'Update Article'
  page.should have_content 'title'
  click_button 'Delete'
  page.should have_content 'title'
end

