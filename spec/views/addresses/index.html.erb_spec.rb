require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        :street_number => 2,
        :street_name => "Street Name",
        :suburb => "Suburb",
        :city => "City",
        :region => "Region",
        :postal_code => 3,
        :box_number => 4,
        :country => "Country",
        :continent => "Continent"
      ),
      Address.create!(
        :street_number => 2,
        :street_name => "Street Name",
        :suburb => "Suburb",
        :city => "City",
        :region => "Region",
        :postal_code => 3,
        :box_number => 4,
        :country => "Country",
        :continent => "Continent"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Street Name".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "Region".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Continent".to_s, :count => 2
  end
end
