require 'rails_helper'

RSpec.describe "user_surveys/index", type: :view do
  before(:each) do
    assign(:user_surveys, [
      UserSurvey.create!(),
      UserSurvey.create!()
    ])
  end

  it "renders a list of user_surveys" do
    render
  end
end
