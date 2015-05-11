require 'rails_helper'

RSpec.describe "UserSurveys", type: :request do
  describe "GET /user_surveys" do
    it "works! (now write some real specs)" do
      get user_surveys_path
      expect(response).to have_http_status(200)
    end
  end
end
