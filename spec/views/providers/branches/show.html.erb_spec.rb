require 'rails_helper'

RSpec.describe "providers/branches/show", type: :view do
  before(:each) do
    @providers_branch = assign(:providers_branch, Providers::Branch.create!(
      :string => "",
      :address => "Address",
      :phone_number => 2,
      :landline => 3,
      :cell_number => 4,
      :bank_detail => "Bank Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Bank Detail/)
  end
end
