require 'spec_helper'

describe "articles/index" do
  before :each do
    assign(:articles,[stub_model(Article),stub_model(Article)])
  end

  it "list all articles" do
    render
    expect(view).to render_template(:partial=>"_article",:count=>2)
  end

end
