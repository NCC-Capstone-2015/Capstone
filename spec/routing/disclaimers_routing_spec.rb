require "rails_helper"

RSpec.describe DisclaimersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/disclaimers").to route_to("disclaimers#index")
    end

    it "routes to #new" do
      expect(:get => "/disclaimers/new").to route_to("disclaimers#new")
    end

    it "routes to #show" do
      expect(:get => "/disclaimers/1").to route_to("disclaimers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/disclaimers/1/edit").to route_to("disclaimers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/disclaimers").to route_to("disclaimers#create")
    end

    it "routes to #update" do
      expect(:put => "/disclaimers/1").to route_to("disclaimers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/disclaimers/1").to route_to("disclaimers#destroy", :id => "1")
    end

  end
end
