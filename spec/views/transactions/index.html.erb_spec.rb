require 'rails_helper'

RSpec.describe "transactions/index", type: :view do
  before(:each) do
    assign(:transactions, [
      Transaction.create!(
        :user => nil,
        :transaction_with => nil,
        :type => 2,
        :amount => "9.99"
      ),
      Transaction.create!(
        :user => nil,
        :transaction_with => nil,
        :type => 2,
        :amount => "9.99"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
