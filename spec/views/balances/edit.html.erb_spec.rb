require 'rails_helper'

RSpec.describe "balances/edit", type: :view do
  before(:each) do
    @balance = assign(:balance, Balance.create!(
      :user => nil,
      :total_amount => "9.99"
    ))
  end

  it "renders the edit balance form" do
    render

    assert_select "form[action=?][method=?]", balance_path(@balance), "post" do

      assert_select "input[name=?]", "balance[user_id]"

      assert_select "input[name=?]", "balance[total_amount]"
    end
  end
end
