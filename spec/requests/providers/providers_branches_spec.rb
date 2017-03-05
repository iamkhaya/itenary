require 'rails_helper'

RSpec.describe "Providers::Branches", type: :request do
  describe "GET /providers_branches" do
    it "works! (now write some real specs)" do
      get providers_branches_path
      expect(response).to have_http_status(200)
    end
  end
end
