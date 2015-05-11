json.array!(@user_surveys) do |user_survey|
  json.extract! user_survey, :id
  json.url user_survey_url(user_survey, format: :json)
end
