module TransactionActions
  extend ActiveSupport::Concern
  included do
    def apply_deposite(amount)
      balance.update!(total_amount: balance.total_amount + amount)
    end

    def apply_withdrawal(amount)
      balance.update!(total_amount: balance.total_amount - amount)
    end
  end
end
