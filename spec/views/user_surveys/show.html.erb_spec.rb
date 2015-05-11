require 'rails_helper'

RSpec.describe "user_surveys/show", type: :view do
  before(:each) do
    @user_survey = assign(:user_survey, UserSurvey.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
