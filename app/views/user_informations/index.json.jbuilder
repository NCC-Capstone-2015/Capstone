json.array!(@user_informations) do |user_information|
  json.extract! user_information, :id
  json.url user_information_url(user_information, format: :json)
end
