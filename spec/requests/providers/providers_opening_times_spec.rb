require 'rails_helper'

RSpec.describe "Providers::OpeningTimes", type: :request do
  describe "GET /providers_opening_times" do
    it "works! (now write some real specs)" do
      get providers_opening_times_path
      expect(response).to have_http_status(200)
    end
  end
end
