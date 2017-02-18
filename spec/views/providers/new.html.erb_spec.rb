require 'rails_helper'

RSpec.describe "providers/new", type: :view do
  before(:each) do
    assign(:provider, Provider.new(
      :name => "MyString",
      :payment_type => "MyString",
      :branch => "MyString",
      :bank_detail => "MyString"
    ))
  end

  it "renders new provider form" do
    render

    assert_select "form[action=?][method=?]", providers_path, "post" do

      assert_select "input#provider_name[name=?]", "provider[name]"

      assert_select "input#provider_payment_type[name=?]", "provider[payment_type]"

      assert_select "input#provider_branch[name=?]", "provider[branch]"

      assert_select "input#provider_bank_detail[name=?]", "provider[bank_detail]"
    end
  end
end
