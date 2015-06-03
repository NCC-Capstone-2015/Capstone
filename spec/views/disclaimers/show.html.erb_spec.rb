require 'rails_helper'

RSpec.describe "disclaimers/show", type: :view do
  before(:each) do
    @disclaimer = assign(:disclaimer, Disclaimer.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
