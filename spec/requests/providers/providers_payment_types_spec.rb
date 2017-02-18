require 'rails_helper'

RSpec.describe "Providers::PaymentTypes", type: :request do
  describe "GET /providers_payment_types" do
    it "works! (now write some real specs)" do
      get providers_payment_types_path
      expect(response).to have_http_status(200)
    end
  end
end
