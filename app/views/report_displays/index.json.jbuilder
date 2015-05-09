json.array!(@report_displays) do |report_display|
  json.extract! report_display, :id
  json.url report_display_url(report_display, format: :json)
end
