require "rails_helper"

RSpec.describe ReportDisplaysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/report_displays").to route_to("report_displays#index")
    end

    it "routes to #new" do
      expect(:get => "/report_displays/new").to route_to("report_displays#new")
    end

    it "routes to #show" do
      expect(:get => "/report_displays/1").to route_to("report_displays#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/report_displays/1/edit").to route_to("report_displays#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/report_displays").to route_to("report_displays#create")
    end

    it "routes to #update" do
      expect(:put => "/report_displays/1").to route_to("report_displays#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/report_displays/1").to route_to("report_displays#destroy", :id => "1")
    end

  end
end
