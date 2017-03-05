require 'rails_helper'

RSpec.describe "providers/show", type: :view do
  before(:each) do
    @provider = assign(:provider, Provider.create!(
      :name => "Name",
      :payment_type => "Payment Type",
      :branch => "Branch",
      :bank_detail => "Bank Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Payment Type/)
    expect(rendered).to match(/Branch/)
    expect(rendered).to match(/Bank Detail/)
  end
end
