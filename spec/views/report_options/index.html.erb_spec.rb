require 'rails_helper'

RSpec.describe "report_options/index", type: :view do
  before(:each) do
    assign(:report_options, [
      ReportOption.create!(),
      ReportOption.create!()
    ])
  end

  it "renders a list of report_options" do
    render
  end
end
