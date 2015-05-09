require "rails_helper"

RSpec.describe ReportOptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/report_options").to route_to("report_options#index")
    end

    it "routes to #new" do
      expect(:get => "/report_options/new").to route_to("report_options#new")
    end

    it "routes to #show" do
      expect(:get => "/report_options/1").to route_to("report_options#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/report_options/1/edit").to route_to("report_options#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/report_options").to route_to("report_options#create")
    end

    it "routes to #update" do
      expect(:put => "/report_options/1").to route_to("report_options#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/report_options/1").to route_to("report_options#destroy", :id => "1")
    end

  end
end
