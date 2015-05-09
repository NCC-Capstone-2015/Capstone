require 'rails_helper'

RSpec.describe UserInformationsController, type: :controller do
  it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
  it "renders the show template" do
        get :edit_welcome
        expect(response).to render_template("edit")
      end


end
