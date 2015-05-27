require 'rails_helper'

RSpec.describe "basic_searches/show", type: :view do
  before(:each) do
    @basic_search = assign(:basic_search, BasicSearch.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
