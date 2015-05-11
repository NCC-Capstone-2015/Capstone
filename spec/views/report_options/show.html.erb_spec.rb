require 'rails_helper'

RSpec.describe "report_options/show", type: :view do
  before(:each) do
    @report_option = assign(:report_option, ReportOption.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
