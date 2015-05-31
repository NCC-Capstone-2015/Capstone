require 'rails_helper'

RSpec.describe "BasicSearches", type: :request do
  describe "GET /basic_searches" do
    it "works! (now write some real specs)" do
      get basic_searches_path
      expect(response).to have_http_status(200)
    end
  end
end
