require 'rails_helper'

RSpec.describe "admin_surveys/edit", type: :view do
  before(:each) do
    @admin_survey = assign(:admin_survey, AdminSurvey.create!())
  end

  it "renders the edit admin_survey form" do
    render

    assert_select "form[action=?][method=?]", admin_survey_path(@admin_survey), "post" do
    end
  end
end
