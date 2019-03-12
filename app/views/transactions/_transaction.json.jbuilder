json.extract! transaction, :id, :user_id, :transaction_with_id, :type, :amount, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
