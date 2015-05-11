require 'rails_helper'

RSpec.describe "account_logins/index", type: :view do
  before(:each) do
    assign(:account_logins, [
      AccountLogin.create!(),
      AccountLogin.create!()
    ])
  end

  it "renders a list of account_logins" do
    render
  end
end
