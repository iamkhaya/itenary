require 'rails_helper'

RSpec.describe "providers/payment_types/edit", type: :view do
  before(:each) do
    @providers_payment_type = assign(:providers_payment_type, Providers::PaymentType.create!(
      :type => ""
    ))
  end

  it "renders the edit providers_payment_type form" do
    render

    assert_select "form[action=?][method=?]", providers_payment_type_path(@providers_payment_type), "post" do

      assert_select "input#providers_payment_type_type[name=?]", "providers_payment_type[type]"
    end
  end
end
