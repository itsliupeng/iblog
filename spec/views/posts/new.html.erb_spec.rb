require 'spec_helper'

describe "posts/new" do
  before(:each) do
    assign(:post, stub_model(Post,
      :title => "MyString",
      :author => "MyString",
      :content => "MyText",
      :view => "9.99",
      :like => "9.99"
    ).as_new_record)
  end

  it "renders new post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posts_path, "post" do
      assert_select "input#post_title[name=?]", "post[title]"
      assert_select "input#post_author[name=?]", "post[author]"
      assert_select "textarea#post_content[name=?]", "post[content]"
      assert_select "input#post_view[name=?]", "post[view]"
      assert_select "input#post_like[name=?]", "post[like]"
    end
  end
end
