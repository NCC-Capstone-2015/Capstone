require 'rails_helper'

RSpec.describe "report_displays/new", type: :view do
  before(:each) do
    assign(:report_display, ReportDisplay.new())
  end

  it "renders new report_display form" do
    render

    assert_select "form[action=?][method=?]", report_displays_path, "post" do
    end
  end
end
