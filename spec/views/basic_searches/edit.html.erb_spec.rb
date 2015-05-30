require 'rails_helper'

RSpec.describe "basic_searches/edit", type: :view do
  before(:each) do
    @basic_search = assign(:basic_search, BasicSearch.create!())
  end

  it "renders the edit basic_search form" do
    render

    assert_select "form[action=?][method=?]", basic_search_path(@basic_search), "post" do
    end
  end
end
