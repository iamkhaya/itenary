require 'rails_helper'

RSpec.describe "providers/bank_details/edit", type: :view do
  before(:each) do
    @providers_bank_detail = assign(:providers_bank_detail, Providers::BankDetail.create!(
      :bank => "MyString",
      :account_number => 1,
      :branch => "MyString",
      :branch_code => "MyString",
      :swift_code => "MyString"
    ))
  end

  it "renders the edit providers_bank_detail form" do
    render

    assert_select "form[action=?][method=?]", providers_bank_detail_path(@providers_bank_detail), "post" do

      assert_select "input#providers_bank_detail_bank[name=?]", "providers_bank_detail[bank]"

      assert_select "input#providers_bank_detail_account_number[name=?]", "providers_bank_detail[account_number]"

      assert_select "input#providers_bank_detail_branch[name=?]", "providers_bank_detail[branch]"

      assert_select "input#providers_bank_detail_branch_code[name=?]", "providers_bank_detail[branch_code]"

      assert_select "input#providers_bank_detail_swift_code[name=?]", "providers_bank_detail[swift_code]"
    end
  end
end
