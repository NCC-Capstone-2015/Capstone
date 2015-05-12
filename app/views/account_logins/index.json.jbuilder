json.array!(@account_logins) do |account_login|
  json.extract! account_login, :id
  json.url account_login_url(account_login, format: :json)
end
