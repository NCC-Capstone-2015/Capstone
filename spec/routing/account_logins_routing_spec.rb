require "rails_helper"

RSpec.describe AccountLoginsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/account_logins").to route_to("account_logins#index")
    end

    it "routes to #new" do
      expect(:get => "/account_logins/new").to route_to("account_logins#new")
    end

    it "routes to #show" do
      expect(:get => "/account_logins/1").to route_to("account_logins#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/account_logins/1/edit").to route_to("account_logins#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/account_logins").to route_to("account_logins#create")
    end

    it "routes to #update" do
      expect(:put => "/account_logins/1").to route_to("account_logins#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/account_logins/1").to route_to("account_logins#destroy", :id => "1")
    end

  end
end
