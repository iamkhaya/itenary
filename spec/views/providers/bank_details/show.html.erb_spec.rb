require 'rails_helper'

RSpec.describe "providers/bank_details/show", type: :view do
  before(:each) do
    @providers_bank_detail = assign(:providers_bank_detail, Providers::BankDetail.create!(
      :bank => "Bank",
      :account_number => 2,
      :branch => "Branch",
      :branch_code => "Branch Code",
      :swift_code => "Swift Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Bank/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Branch/)
    expect(rendered).to match(/Branch Code/)
    expect(rendered).to match(/Swift Code/)
  end
end
