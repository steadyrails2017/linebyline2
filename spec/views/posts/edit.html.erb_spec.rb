require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :author => "MyString",
      :title => "MyString",
      :body => "MyText",
      :subject => "MyString",
      :category => "MyString",
      :article_id => "MyString",
      :twitter_link => "MyString",
      :facebook_link => "MyString",
      :finished => false
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_author[name=?]", "post[author]"

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "textarea#post_body[name=?]", "post[body]"

      assert_select "input#post_subject[name=?]", "post[subject]"

      assert_select "input#post_category[name=?]", "post[category]"

      assert_select "input#post_article_id[name=?]", "post[article_id]"

      assert_select "input#post_twitter_link[name=?]", "post[twitter_link]"

      assert_select "input#post_facebook_link[name=?]", "post[facebook_link]"

      assert_select "input#post_finished[name=?]", "post[finished]"
    end
  end
end
