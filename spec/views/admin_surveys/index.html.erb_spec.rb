require 'rails_helper'

RSpec.describe "admin_surveys/index", type: :view do
  before(:each) do
    assign(:admin_surveys, [
      AdminSurvey.create!(),
      AdminSurvey.create!()
    ])
  end

  it "renders a list of admin_surveys" do
    render
  end
end
