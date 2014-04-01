require 'spec_helper'

describe Ability do
  before :each do
    @user = create(:user)
  end

  it "administrator can manage all resources" do
    @user.roles << create(:role,:name=>:Administrator)
    ability = Ability.new(@user)
    ability.can?(:manage,:article).should be_true
    ability.can?(:new,:article).should be_true
    ability.can?(:manage,:user).should be_true
  end

  it "editor can edit article" do
    @user.roles << create(:role,:name=>:Editor)
    ability = Ability.new(@user)
    ability.can?(:manage,:article).should be_true
    ability.can?(:new,:article).should be_true
  end
end
