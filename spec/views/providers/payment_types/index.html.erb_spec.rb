require 'rails_helper'

RSpec.describe "providers/payment_types/index", type: :view do
  before(:each) do
    assign(:providers_payment_types, [
      Providers::PaymentType.create!(
        :type => "Type"
      ),
      Providers::PaymentType.create!(
        :type => "Type"
      )
    ])
  end

  it "renders a list of providers/payment_types" do
    render
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
