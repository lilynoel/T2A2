require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
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

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

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
