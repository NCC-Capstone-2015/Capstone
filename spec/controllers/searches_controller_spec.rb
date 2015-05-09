require 'rails_helper'

RSpec.describe SearchesController, type: :controller do
  it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
  it "renders the show template" do
        get :new
        expect(response).to render_template("new")
      end

end
