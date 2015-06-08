require 'rails_helper'

RSpec.describe "giving_backs/edit", type: :view do
  before(:each) do
    @giving_back = assign(:giving_back, GivingBack.create!(
      :user_id => "MyString",
      :company_info_id => "MyString",
      :subject => "MyString",
      :position => "MyString",
      :description => "MyString",
      :requirements => "MyString",
      :approved => false,
      :completed => false,
      :giving_back_type => 1,
      :contact_first_name => "MyString",
      :contact_last_name => "MyString",
      :contact_email => "MyString"
    ))
  end

  it "renders the edit giving_back form" do
    render

    assert_select "form[action=?][method=?]", giving_back_path(@giving_back), "post" do

      assert_select "input#giving_back_user_id[name=?]", "giving_back[user_id]"

      assert_select "input#giving_back_company_info_id[name=?]", "giving_back[company_info_id]"

      assert_select "input#giving_back_subject[name=?]", "giving_back[subject]"

      assert_select "input#giving_back_position[name=?]", "giving_back[position]"

      assert_select "input#giving_back_description[name=?]", "giving_back[description]"

      assert_select "input#giving_back_requirements[name=?]", "giving_back[requirements]"

      assert_select "input#giving_back_approved[name=?]", "giving_back[approved]"

      assert_select "input#giving_back_completed[name=?]", "giving_back[completed]"

      assert_select "input#giving_back_giving_back_type[name=?]", "giving_back[giving_back_type]"

      assert_select "input#giving_back_contact_first_name[name=?]", "giving_back[contact_first_name]"

      assert_select "input#giving_back_contact_last_name[name=?]", "giving_back[contact_last_name]"

      assert_select "input#giving_back_contact_email[name=?]", "giving_back[contact_email]"
    end
  end
end
