require 'rails_helper'

RSpec.describe "ReportOptions", type: :request do
  describe "GET /report_options" do
    it "works! (now write some real specs)" do
      get report_options_path
      expect(response).to have_http_status(200)
    end
  end
end
