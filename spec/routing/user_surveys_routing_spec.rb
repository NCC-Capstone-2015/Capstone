require "rails_helper"

RSpec.describe UserSurveysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_surveys").to route_to("user_surveys#index")
    end

    it "routes to #new" do
      expect(:get => "/user_surveys/new").to route_to("user_surveys#new")
    end

    it "routes to #show" do
      expect(:get => "/user_surveys/1").to route_to("user_surveys#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_surveys/1/edit").to route_to("user_surveys#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_surveys").to route_to("user_surveys#create")
    end

    it "routes to #update" do
      expect(:put => "/user_surveys/1").to route_to("user_surveys#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_surveys/1").to route_to("user_surveys#destroy", :id => "1")
    end

  end
end
