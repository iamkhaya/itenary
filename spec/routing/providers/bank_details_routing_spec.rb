require "rails_helper"

RSpec.describe Providers::BankDetailsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/providers/bank_details").to route_to("providers/bank_details#index")
    end

    it "routes to #new" do
      expect(:get => "/providers/bank_details/new").to route_to("providers/bank_details#new")
    end

    it "routes to #show" do
      expect(:get => "/providers/bank_details/1").to route_to("providers/bank_details#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/providers/bank_details/1/edit").to route_to("providers/bank_details#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/providers/bank_details").to route_to("providers/bank_details#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/providers/bank_details/1").to route_to("providers/bank_details#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/providers/bank_details/1").to route_to("providers/bank_details#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/providers/bank_details/1").to route_to("providers/bank_details#destroy", :id => "1")
    end

  end
end
