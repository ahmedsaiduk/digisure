require 'rails_helper'

RSpec.describe "balances/new", type: :view do
  before(:each) do
    assign(:balance, Balance.new(
      :user => nil,
      :total_amount => "9.99"
    ))
  end

  it "renders new balance form" do
    render

    assert_select "form[action=?][method=?]", balances_path, "post" do

      assert_select "input[name=?]", "balance[user_id]"

      assert_select "input[name=?]", "balance[total_amount]"
    end
  end
end
