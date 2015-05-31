require 'rails_helper'

RSpec.describe "basic_searches/index", type: :view do
  before(:each) do
    assign(:basic_searches, [
      BasicSearch.create!(),
      BasicSearch.create!()
    ])
  end

  it "renders a list of basic_searches" do
    render
  end
end
