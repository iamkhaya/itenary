json.extract! address, :id, :street_number, :street_name, :suburb, :city, :region, :postal_code, :box_number, :country, :continent, :created_at, :updated_at
json.url address_url(address, format: :json)