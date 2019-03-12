# == Schema Information
#
# Table name: balances
#
#  id           :bigint(8)        not null, primary key
#  lock_version :integer          default(0), not null
#  total_amount :decimal(, )      not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint(8)        not null
#
# Indexes
#
#  index_balances_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

FactoryBot.define do
  factory :balance do
    user { nil }
    total_amount { "9.99" }
  end
end
