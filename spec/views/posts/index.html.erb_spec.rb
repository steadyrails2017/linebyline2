require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :author => "Author",
        :title => "Title",
        :body => "MyText",
        :subject => "Subject",
        :category => "Category",
        :article_id => "Article",
        :twitter_link => "Twitter Link",
        :facebook_link => "Facebook Link",
        :finished => false
      ),
      Post.create!(
        :author => "Author",
        :title => "Title",
        :body => "MyText",
        :subject => "Subject",
        :category => "Category",
        :article_id => "Article",
        :twitter_link => "Twitter Link",
        :facebook_link => "Facebook Link",
        :finished => false
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Article".to_s, :count => 2
    assert_select "tr>td", :text => "Twitter Link".to_s, :count => 2
    assert_select "tr>td", :text => "Facebook Link".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
