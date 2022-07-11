require 'rails_helper'

RSpec.describe "listings/new", type: :view do
  before(:each) do
    assign(:listing, Listing.new(
      title: "MyString",
      description: nil,
      breed: "MyString",
      location: "MyString",
      fee: 1,
      available: false,
      user: nil,
      category: nil
    ))
  end

  it "renders new listing form" do
    render

    assert_select "form[action=?][method=?]", listings_path, "post" do

      assert_select "input[name=?]", "listing[title]"

      assert_select "input[name=?]", "listing[description]"

      assert_select "input[name=?]", "listing[breed]"

      assert_select "input[name=?]", "listing[location]"

      assert_select "input[name=?]", "listing[fee]"

      assert_select "input[name=?]", "listing[available]"

      assert_select "input[name=?]", "listing[user_id]"

      assert_select "input[name=?]", "listing[category_id]"
    end
  end
end
