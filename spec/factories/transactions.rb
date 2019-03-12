# == Schema Information
#
# Table name: transactions
#
#  id                  :bigint(8)        not null, primary key
#  amount              :decimal(, )      not null
#  transaction_state   :integer          not null
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  transaction_with_id :bigint(8)        not null
#  user_id             :bigint(8)        not null
#
# Indexes
#
#  index_transactions_on_transaction_with_id  (transaction_with_id)
#  index_transactions_on_user_id              (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (transaction_with_id => users.id)
#  fk_rails_...  (user_id => users.id)
#

FactoryBot.define do
  factory :transaction do
    user { nil }
    transaction_with { nil }
    type { 1 }
    amount { "9.99" }
  end
end
