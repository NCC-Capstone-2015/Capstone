require "rails_helper"

RSpec.describe GivingBacksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/giving_backs").to route_to("giving_backs#index")
    end

    it "routes to #new" do
      expect(:get => "/giving_backs/new").to route_to("giving_backs#new")
    end

    it "routes to #show" do
      expect(:get => "/giving_backs/1").to route_to("giving_backs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/giving_backs/1/edit").to route_to("giving_backs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/giving_backs").to route_to("giving_backs#create")
    end

    it "routes to #update" do
      expect(:put => "/giving_backs/1").to route_to("giving_backs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/giving_backs/1").to route_to("giving_backs#destroy", :id => "1")
    end

  end
end
