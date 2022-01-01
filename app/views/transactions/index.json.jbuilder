json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :date, :category_id, :amount
  json.url transaction_url(transaction, format: :json)
end
