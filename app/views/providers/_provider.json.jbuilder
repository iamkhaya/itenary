json.extract! provider, :id, :name, :payment_type, :branch, :bank_detail, :created_at, :updated_at
json.url provider_url(provider, format: :json)