require 'rails_helper'

RSpec.describe "report_options/edit", type: :view do
  before(:each) do
    @report_option = assign(:report_option, ReportOption.create!())
  end

  it "renders the edit report_option form" do
    render

    assert_select "form[action=?][method=?]", report_option_path(@report_option), "post" do
    end
  end
end
