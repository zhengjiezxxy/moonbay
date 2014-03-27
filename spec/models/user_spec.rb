require 'spec_helper'

describe User do
    it "distinguish between different roles" do
      zhousuwan = User.create!(:email=>'zsw702x@163.com',:password=>'12345678')
      Role.connection
      zhousuwan.roles << Role.find_by(:name=>:editor)
      expect(zhousuwan.role?(:editor)).to eq(true)
  end
end
