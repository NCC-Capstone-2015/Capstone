require 'rails_helper'

RSpec.describe "homepages/show", type: :view do
  before(:each) do
    @homepage = assign(:homepage, Homepage.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
