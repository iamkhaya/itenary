require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street_number => 1,
      :street_name => "MyString",
      :suburb => "MyString",
      :city => "MyString",
      :region => "MyString",
      :postal_code => 1,
      :box_number => 1,
      :country => "MyString",
      :continent => "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input#address_street_number[name=?]", "address[street_number]"

      assert_select "input#address_street_name[name=?]", "address[street_name]"

      assert_select "input#address_suburb[name=?]", "address[suburb]"

      assert_select "input#address_city[name=?]", "address[city]"

      assert_select "input#address_region[name=?]", "address[region]"

      assert_select "input#address_postal_code[name=?]", "address[postal_code]"

      assert_select "input#address_box_number[name=?]", "address[box_number]"

      assert_select "input#address_country[name=?]", "address[country]"

      assert_select "input#address_continent[name=?]", "address[continent]"
    end
  end
end
