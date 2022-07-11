require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
        title: "Title",
        description: nil,
        breed: "Breed",
        location: "Location",
        fee: 2,
        available: false,
        user: nil,
        category: nil
      ),
      Listing.create!(
        title: "Title",
        description: nil,
        breed: "Breed",
        location: "Location",
        fee: 2,
        available: false,
        user: nil,
        category: nil
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Breed".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
