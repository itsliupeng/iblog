require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "MyString",
      :author => "MyString",
      :content => "MyText",
      :view => "9.99",
      :like => "9.99"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", post_path(@post), "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_author[name=?]", "post[author]"
      assert_select "textarea#post_content[name=?]", "post[content]"
      assert_select "input#post_view[name=?]", "post[view]"
      assert_select "input#post_like[name=?]", "post[like]"
    end
  end
end
