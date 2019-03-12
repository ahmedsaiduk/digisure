require 'rails_helper'

RSpec.describe "transactions/new", type: :view do
  before(:each) do
    assign(:transaction, Transaction.new(
      :user => nil,
      :transaction_with => nil,
      :type => 1,
      :amount => "9.99"
    ))
  end

  it "renders new transaction form" do
    render

    assert_select "form[action=?][method=?]", transactions_path, "post" do

      assert_select "input[name=?]", "transaction[user_id]"

      assert_select "input[name=?]", "transaction[transaction_with_id]"

      assert_select "input[name=?]", "transaction[type]"

      assert_select "input[name=?]", "transaction[amount]"
    end
  end
end
