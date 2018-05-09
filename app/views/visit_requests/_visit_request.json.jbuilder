json.extract! visit_request, :id, :scheduled, :visitor_name, :visitor_email, :visit_type, :approved, :created_at, :updated_at
json.url visit_request_url(visit_request, format: :json)
