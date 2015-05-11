require 'rails_helper'

RSpec.describe "admin_surveys/new", type: :view do
  before(:each) do
    assign(:admin_survey, AdminSurvey.new())
  end

  it "renders new admin_survey form" do
    render

    assert_select "form[action=?][method=?]", admin_surveys_path, "post" do
    end
  end
end
