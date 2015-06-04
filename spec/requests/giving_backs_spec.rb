require 'rails_helper'

RSpec.describe "GivingBacks", type: :request do
  describe "GET /giving_backs" do
    it "works! (now write some real specs)" do
      get giving_backs_path
      expect(response).to have_http_status(200)
    end
  end
end
