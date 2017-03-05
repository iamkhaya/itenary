require 'rails_helper'

RSpec.describe "providers/payment_types/new", type: :view do
  before(:each) do
    assign(:providers_payment_type, Providers::PaymentType.new(
      :type => ""
    ))
  end

  it "renders new providers_payment_type form" do
    render

    assert_select "form[action=?][method=?]", providers_payment_types_path, "post" do

      assert_select "input#providers_payment_type_type[name=?]", "providers_payment_type[type]"
    end
  end
end
