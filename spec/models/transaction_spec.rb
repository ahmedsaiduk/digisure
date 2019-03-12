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

require 'rails_helper'

RSpec.describe Transaction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
