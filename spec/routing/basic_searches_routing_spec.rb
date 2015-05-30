require "rails_helper"

RSpec.describe BasicSearchesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/basic_searches").to route_to("basic_searches#index")
    end

    it "routes to #new" do
      expect(:get => "/basic_searches/new").to route_to("basic_searches#new")
    end

    it "routes to #show" do
      expect(:get => "/basic_searches/1").to route_to("basic_searches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/basic_searches/1/edit").to route_to("basic_searches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/basic_searches").to route_to("basic_searches#create")
    end

    it "routes to #update" do
      expect(:put => "/basic_searches/1").to route_to("basic_searches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/basic_searches/1").to route_to("basic_searches#destroy", :id => "1")
    end

  end
end
