require 'rails_helper'

RSpec.describe "listings/show", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      title: "Title",
      description: nil,
      breed: "Breed",
      location: "Location",
      fee: 2,
      available: false,
      user: nil,
      category: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Breed/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
