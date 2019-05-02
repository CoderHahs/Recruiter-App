json.extract! company, :id, :name, :email, :address, :created_at, :updated_at
json.url company_url(company, format: :json)
