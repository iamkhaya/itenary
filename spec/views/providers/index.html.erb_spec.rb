require 'rails_helper'

RSpec.describe "providers/index", type: :view do
  before(:each) do
    assign(:providers, [
      Provider.create!(
        :name => "Name",
        :payment_type => "Payment Type",
        :branch => "Branch",
        :bank_detail => "Bank Detail"
      ),
      Provider.create!(
        :name => "Name",
        :payment_type => "Payment Type",
        :branch => "Branch",
        :bank_detail => "Bank Detail"
      )
    ])
  end

  it "renders a list of providers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Payment Type".to_s, :count => 2
    assert_select "tr>td", :text => "Branch".to_s, :count => 2
    assert_select "tr>td", :text => "Bank Detail".to_s, :count => 2
  end
end
