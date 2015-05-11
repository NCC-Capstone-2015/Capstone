require 'rails_helper'

RSpec.describe "user_surveys/new", type: :view do
  before(:each) do
    assign(:user_survey, UserSurvey.new())
  end

  it "renders new user_survey form" do
    render

    assert_select "form[action=?][method=?]", user_surveys_path, "post" do
    end
  end
end
