json.array!(@giving_backs) do |giving_back|
  json.extract! giving_back, :id, :user_id, :company_info_id, :subject, :position, :description, :requirements, :approved, :completed, :giving_back_type, :contact_first_name, :contact_last_name, :contact_email
  json.url giving_back_url(giving_back, format: :json)
end
