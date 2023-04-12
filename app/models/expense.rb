class Expense < ApplicationRecord
  attribute :purchased_at, Inputomatic::DateTime.new
  attribute :amount, Inputomatic::Number.new

  validates :purchased_at,
    presence: true,
    inclusion: {
      in: Range.new(90.days.ago, 90.days.from_now),
      message: -> (object, data) { "#{data[:value]&.to_date} is not between #{90.days.ago.to_date} and #{90.days.from_now.to_date}" }
    }

  # Rails validations check the string with regular expressions before the value is cast by `Inputomatic::Number.new`, which
  # makes these validations not work properly.
  # validates :amount,
  #   numericality: { greater_than_or_equal_to: 0 }
end
