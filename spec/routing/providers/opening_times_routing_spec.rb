require "rails_helper"

RSpec.describe Providers::OpeningTimesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/providers/opening_times").to route_to("providers/opening_times#index")
    end

    it "routes to #new" do
      expect(:get => "/providers/opening_times/new").to route_to("providers/opening_times#new")
    end

    it "routes to #show" do
      expect(:get => "/providers/opening_times/1").to route_to("providers/opening_times#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/providers/opening_times/1/edit").to route_to("providers/opening_times#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/providers/opening_times").to route_to("providers/opening_times#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/providers/opening_times/1").to route_to("providers/opening_times#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/providers/opening_times/1").to route_to("providers/opening_times#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/providers/opening_times/1").to route_to("providers/opening_times#destroy", :id => "1")
    end

  end
end
