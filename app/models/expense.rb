class Expense < ApplicationRecord
  attribute :purchased_at, Inputomatic::DateTime.new
  attribute :amount, Inputomatic::Number.new

  validates :purchased_at,
    inclusion: Range.new(90.days.ago, 90.days.from_now)

  validates :amount,
    numericality: { greater_than_or_equal_to: 0 }
end
