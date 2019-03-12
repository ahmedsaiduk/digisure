class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true, null: false
      t.references :transaction_with, null: false
      t.integer :transaction_state, null: false
      t.decimal :amount, null: false

      t.timestamps
    end
    add_foreign_key :transactions, :users, column: :transaction_with_id, primary_key: :id
  end
end
