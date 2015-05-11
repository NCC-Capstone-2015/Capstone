require 'rails_helper'

RSpec.describe "ReportDisplays", type: :request do
  describe "GET /report_displays" do
    it "works! (now write some real specs)" do
      get report_displays_path
      expect(response).to have_http_status(200)
    end
  end
end
