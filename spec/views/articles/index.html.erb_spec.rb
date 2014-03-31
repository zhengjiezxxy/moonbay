require 'spec_helper'

describe "articles/index" do
  before :each do
    assign(:articles,[stub_model(Article),stub_model(Article)])
  end

  it "list all articles" do
    render
    expect(view).to render_template(:partial=>"_article",:count=>2)
  end

  it "doesn't show new edit delete button or link for reader" do
    user = create(:user)
    user.roles << create(:role,:name=>:Reader)
    render
    rendered.should_not have_content(:New)
  end

end
