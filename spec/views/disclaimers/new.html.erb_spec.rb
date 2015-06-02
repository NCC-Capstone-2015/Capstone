require 'rails_helper'

RSpec.describe "disclaimers/new", type: :view do
  before(:each) do
    assign(:disclaimer, Disclaimer.new())
  end

  it "renders new disclaimer form" do
    render

    assert_select "form[action=?][method=?]", disclaimers_path, "post" do
    end
  end
end
