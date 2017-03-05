require 'rails_helper'

RSpec.describe "providers/branches/index", type: :view do
  before(:each) do
    assign(:providers_branches, [
      Providers::Branch.create!(
        :string => "",
        :address => "Address",
        :phone_number => 2,
        :landline => 3,
        :cell_number => 4,
        :bank_detail => "Bank Detail"
      ),
      Providers::Branch.create!(
        :string => "",
        :address => "Address",
        :phone_number => 2,
        :landline => 3,
        :cell_number => 4,
        :bank_detail => "Bank Detail"
      )
    ])
  end

  it "renders a list of providers/branches" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Bank Detail".to_s, :count => 2
  end
end
