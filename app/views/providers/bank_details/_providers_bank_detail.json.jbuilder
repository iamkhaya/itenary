json.extract! providers_bank_detail, :id, :bank, :account_number, :branch, :branch_code, :swift_code, :created_at, :updated_at
json.url providers_bank_detail_url(providers_bank_detail, format: :json)