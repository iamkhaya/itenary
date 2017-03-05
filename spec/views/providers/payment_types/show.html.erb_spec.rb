require 'rails_helper'

RSpec.describe "providers/payment_types/show", type: :view do
  before(:each) do
    @providers_payment_type = assign(:providers_payment_type, Providers::PaymentType.create!(
      :type => "Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Type/)
  end
end
