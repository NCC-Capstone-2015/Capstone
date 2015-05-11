require 'rails_helper'

RSpec.describe "account_logins/new", type: :view do
  before(:each) do
    assign(:account_login, AccountLogin.new())
  end

  it "renders new account_login form" do
    render

    assert_select "form[action=?][method=?]", account_logins_path, "post" do
    end
  end
end
