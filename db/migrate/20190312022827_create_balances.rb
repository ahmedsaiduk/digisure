class CreateBalances < ActiveRecord::Migration[5.2]
  def change
    create_table :balances do |t|
      t.references :user, foreign_key: true, null: false
      t.decimal :total_amount, null: false
      t.integer :lock_version, default: 0, null: false

      t.timestamps
    end
  end
end
