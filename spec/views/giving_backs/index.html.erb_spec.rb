require 'rails_helper'

RSpec.describe "giving_backs/index", type: :view do
  before(:each) do
    assign(:giving_backs, [
      GivingBack.create!(
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
      ),
      GivingBack.create!(
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
      )
    ])
  end

  it "renders a list of giving_backs" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Company Info".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Requirements".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Contact First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Email".to_s, :count => 2
  end
end
