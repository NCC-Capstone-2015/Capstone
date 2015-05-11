require 'rails_helper'

RSpec.describe "AdminSurveys", type: :request do
  describe "GET /admin_surveys" do
    it "works! (now write some real specs)" do
      get admin_surveys_path
      expect(response).to have_http_status(200)
    end
  end
end
