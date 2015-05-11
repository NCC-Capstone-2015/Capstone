require 'rails_helper'

RSpec.describe "homepages/index", type: :view do
  before(:each) do
    assign(:homepages, [
      Homepage.create!(),
      Homepage.create!()
    ])
  end

  it "renders a list of homepages" do
    render
  end
end
