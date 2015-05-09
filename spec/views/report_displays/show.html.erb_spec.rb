require 'rails_helper'

RSpec.describe "report_displays/show", type: :view do
  before(:each) do
    @report_display = assign(:report_display, ReportDisplay.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
