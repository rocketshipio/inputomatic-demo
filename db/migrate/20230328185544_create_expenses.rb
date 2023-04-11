class CreateExpenses < ActiveRecord::Migration[7.1]
  def change
    create_table :expenses do |t|
      t.datetime :purchased_at
      t.decimal :amount

      t.timestamps
    end
  end
end
