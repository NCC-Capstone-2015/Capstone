require 'rails_helper'

RSpec.describe "user_surveys/edit", type: :view do
  before(:each) do
    @user_survey = assign(:user_survey, UserSurvey.create!())
  end

  it "renders the edit user_survey form" do
    render

    assert_select "form[action=?][method=?]", user_survey_path(@user_survey), "post" do
    end
  end
end
