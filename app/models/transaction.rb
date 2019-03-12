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

class Transaction < ApplicationRecord
  enum transaction_state: { deposite: 0, withdrawal: 1 }
  # validation
  validate :check_both_users

  # relation
  belongs_to :user
  belongs_to :transaction_with, class_name: 'User', foreign_key: 'transaction_with_id'

  private

  def check_both_users
    errors.add(:user, "can't be the same transaction_with") if user == transaction_with
  end
end
