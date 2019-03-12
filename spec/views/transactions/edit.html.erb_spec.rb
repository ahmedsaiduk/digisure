require 'rails_helper'

RSpec.describe "transactions/edit", type: :view do
  before(:each) do
    @transaction = assign(:transaction, Transaction.create!(
      :user => nil,
      :transaction_with => nil,
      :type => 1,
      :amount => "9.99"
    ))
  end

  it "renders the edit transaction form" do
    render

    assert_select "form[action=?][method=?]", transaction_path(@transaction), "post" do

      assert_select "input[name=?]", "transaction[user_id]"

      assert_select "input[name=?]", "transaction[transaction_with_id]"

      assert_select "input[name=?]", "transaction[type]"

      assert_select "input[name=?]", "transaction[amount]"
    end
  end
end
