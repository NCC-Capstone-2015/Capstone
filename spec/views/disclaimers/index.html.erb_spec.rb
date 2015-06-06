require 'rails_helper'

RSpec.describe "disclaimers/index", type: :view do
  before(:each) do
    assign(:disclaimers, [
      Disclaimer.create!(),
      Disclaimer.create!()
    ])
  end

  it "renders a list of disclaimers" do
    render
  end
end
