require 'rails_helper'

RSpec.describe "homepages/edit", type: :view do
  before(:each) do
    @homepage = assign(:homepage, Homepage.create!())
  end

  it "renders the edit homepage form" do
    render

    assert_select "form[action=?][method=?]", homepage_path(@homepage), "post" do
    end
  end
end
