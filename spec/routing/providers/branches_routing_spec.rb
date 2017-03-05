require "rails_helper"

RSpec.describe Providers::BranchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/providers/branches").to route_to("providers/branches#index")
    end

    it "routes to #new" do
      expect(:get => "/providers/branches/new").to route_to("providers/branches#new")
    end

    it "routes to #show" do
      expect(:get => "/providers/branches/1").to route_to("providers/branches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/providers/branches/1/edit").to route_to("providers/branches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/providers/branches").to route_to("providers/branches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/providers/branches/1").to route_to("providers/branches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/providers/branches/1").to route_to("providers/branches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/providers/branches/1").to route_to("providers/branches#destroy", :id => "1")
    end

  end
end
