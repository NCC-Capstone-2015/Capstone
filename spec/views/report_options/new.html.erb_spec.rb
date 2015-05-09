require 'rails_helper'

RSpec.describe "report_options/new", type: :view do
  before(:each) do
    assign(:report_option, ReportOption.new())
  end

  it "renders new report_option form" do
    render

    assert_select "form[action=?][method=?]", report_options_path, "post" do
    end
  end
end
