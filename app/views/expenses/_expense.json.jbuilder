json.extract! expense, :id, :name, :purchased_at, :amount, :created_at, :updated_at
json.url expense_url(expense, format: :json)
