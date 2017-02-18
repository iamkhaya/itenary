require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street_number => 2,
      :street_name => "Street Name",
      :suburb => "Suburb",
      :city => "City",
      :region => "Region",
      :postal_code => 3,
      :box_number => 4,
      :country => "Country",
      :continent => "Continent"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Street Name/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Region/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Continent/)
  end
end
