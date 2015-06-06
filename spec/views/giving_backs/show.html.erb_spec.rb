require 'rails_helper'

RSpec.describe "giving_backs/show", type: :view do
  before(:each) do
    @giving_back = assign(:giving_back, GivingBack.create!(
      :user_id => "User",
      :company_info_id => "Company Info",
      :subject => "Subject",
      :position => "Position",
      :description => "Description",
      :requirements => "Requirements",
      :approved => false,
      :completed => false,
      :giving_back_type => 1,
      :contact_first_name => "Contact First Name",
      :contact_last_name => "Contact Last Name",
      :contact_email => "Contact Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Company Info/)
    expect(rendered).to match(/Subject/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Requirements/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Contact First Name/)
    expect(rendered).to match(/Contact Last Name/)
    expect(rendered).to match(/Contact Email/)
  end
end
