class Expense < ApplicationRecord
  attribute :purchased_at, Inputomatic::DateTime.new
  attribute :amount, Inputomatic::Number.new

  validates :purchased_at,
    inclusion: Range.new(90.days.ago, 90.days.from_now)
end
