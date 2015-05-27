require 'rails_helper'

RSpec.describe "basic_searches/new", type: :view do
  before(:each) do
    assign(:basic_search, BasicSearch.new())
  end

  it "renders new basic_search form" do
    render

    assert_select "form[action=?][method=?]", basic_searches_path, "post" do
    end
  end
end
