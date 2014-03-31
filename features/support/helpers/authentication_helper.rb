module AuthenticationHelper
  def createUser(role=:editor)
    @user = FactoryGirl.create(:user)
    @current_email = @user.email
    @current_password = @user.password
#@user.roles << FactoryGirl.create(:role)
  end

  def user
    @user
  end

  def fill_in_my_details
    fill_in 'Email', :with => @current_email
    fill_in 'Password', :with => @current_password
  end

  def login_from_signin
    visit new_user_session_path
    fill_in_my_details
    click_button 'Sign in'
    page.should have_content 'Signed in'
  end
    
end

World(AuthenticationHelper)
