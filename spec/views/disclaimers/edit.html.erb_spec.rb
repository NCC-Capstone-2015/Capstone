require 'rails_helper'

RSpec.describe "disclaimers/edit", type: :view do
  before(:each) do
    @disclaimer = assign(:disclaimer, Disclaimer.create!())
  end

  it "renders the edit disclaimer form" do
    render

    assert_select "form[action=?][method=?]", disclaimer_path(@disclaimer), "post" do
    end
  end
end
