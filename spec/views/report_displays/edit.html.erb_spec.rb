require 'rails_helper'

RSpec.describe "report_displays/edit", type: :view do
  before(:each) do
    @report_display = assign(:report_display, ReportDisplay.create!())
  end

  it "renders the edit report_display form" do
    render

    assert_select "form[action=?][method=?]", report_display_path(@report_display), "post" do
    end
  end
end
