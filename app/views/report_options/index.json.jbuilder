json.array!(@report_options) do |report_option|
  json.extract! report_option, :id
  json.url report_option_url(report_option, format: :json)
end
