require 'rails_helper'

RSpec.describe "report_displays/index", type: :view do
  before(:each) do
    assign(:report_displays, [
      ReportDisplay.create!(),
      ReportDisplay.create!()
    ])
  end

  it "renders a list of report_displays" do
    render
  end
end
