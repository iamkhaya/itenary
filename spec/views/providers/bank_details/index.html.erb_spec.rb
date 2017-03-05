require 'rails_helper'

RSpec.describe "providers/bank_details/index", type: :view do
  before(:each) do
    assign(:providers_bank_details, [
      Providers::BankDetail.create!(
        :bank => "Bank",
        :account_number => 2,
        :branch => "Branch",
        :branch_code => "Branch Code",
        :swift_code => "Swift Code"
      ),
      Providers::BankDetail.create!(
        :bank => "Bank",
        :account_number => 2,
        :branch => "Branch",
        :branch_code => "Branch Code",
        :swift_code => "Swift Code"
      )
    ])
  end

  it "renders a list of providers/bank_details" do
    render
    assert_select "tr>td", :text => "Bank".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Branch".to_s, :count => 2
    assert_select "tr>td", :text => "Branch Code".to_s, :count => 2
    assert_select "tr>td", :text => "Swift Code".to_s, :count => 2
  end
end
