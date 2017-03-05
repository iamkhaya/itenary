require 'rails_helper'

RSpec.describe "providers/branches/edit", type: :view do
  before(:each) do
    @providers_branch = assign(:providers_branch, Providers::Branch.create!(
      :string => "",
      :address => "MyString",
      :phone_number => 1,
      :landline => 1,
      :cell_number => 1,
      :bank_detail => "MyString"
    ))
  end

  it "renders the edit providers_branch form" do
    render

    assert_select "form[action=?][method=?]", providers_branch_path(@providers_branch), "post" do

      assert_select "input#providers_branch_string[name=?]", "providers_branch[string]"

      assert_select "input#providers_branch_address[name=?]", "providers_branch[address]"

      assert_select "input#providers_branch_phone_number[name=?]", "providers_branch[phone_number]"

      assert_select "input#providers_branch_landline[name=?]", "providers_branch[landline]"

      assert_select "input#providers_branch_cell_number[name=?]", "providers_branch[cell_number]"

      assert_select "input#providers_branch_bank_detail[name=?]", "providers_branch[bank_detail]"
    end
  end
end
