require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :author => "Author",
      :title => "Title",
      :body => "MyText",
      :subject => "Subject",
      :category => "Category",
      :article_id => "Article",
      :twitter_link => "Twitter Link",
      :facebook_link => "Facebook Link",
      :finished => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Article/)
    expect(rendered).to match(/Twitter Link/)
    expect(rendered).to match(/Facebook Link/)
    expect(rendered).to match(/false/)
  end
end
