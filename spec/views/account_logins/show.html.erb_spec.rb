require 'rails_helper'

RSpec.describe "account_logins/show", type: :view do
  before(:each) do
    @account_login = assign(:account_login, AccountLogin.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
