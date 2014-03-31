require 'spec_helper'

describe User do

    before :each do
      @zz = FactoryGirl.create(:user,email: 'zhengjiezxxy2010@gmail.com', password: '12345678')
      @zz.roles << create(:role,name: :administrator)
      @sw = create(:user);
      @sw.roles << create(:role,name: :editor)
    end

    it "distinguish between different roles" do
      @zz.roles.should_not equal(@sw.roles)
    end
    
     it "should create user with roles" do
       @zz.email.should == "zhengjiezxxy2010@gmail.com"
       @zz.password.should == "12345678"
       @zz.roles[0].name.should == "administrator"
    end
end
