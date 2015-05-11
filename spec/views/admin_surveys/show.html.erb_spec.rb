require 'rails_helper'

RSpec.describe "admin_surveys/show", type: :view do
  before(:each) do
    @admin_survey = assign(:admin_survey, AdminSurvey.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
