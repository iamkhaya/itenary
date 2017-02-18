require 'rails_helper'

RSpec.describe "Providers::BankDetails", type: :request do
  describe "GET /providers_bank_details" do
    it "works! (now write some real specs)" do
      get providers_bank_details_path
      expect(response).to have_http_status(200)
    end
  end
end
