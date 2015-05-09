require 'rails_helper'

RSpec.describe WelcomesController, type: :controller do
  it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
  it "renders the show template" do
        get :new
        expect(response).to render_template("new")
      end
  it 'creates a resource' do
        get :update
        expect(response).to respond_with_content_type(:json)
      end
end
