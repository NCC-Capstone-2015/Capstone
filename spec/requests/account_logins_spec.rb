require 'rails_helper'

RSpec.describe "AccountLogins", type: :request do
  describe "GET /account_logins" do
    it "works! (now write some real specs)" do
      get account_logins_path
      expect(response).to have_http_status(200)
    end
  end
end
