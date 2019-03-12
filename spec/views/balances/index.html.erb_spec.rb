require 'rails_helper'

RSpec.describe "balances/index", type: :view do
  before(:each) do
    assign(:balances, [
      Balance.create!(
        :user => nil,
        :total_amount => "9.99"
      ),
      Balance.create!(
        :user => nil,
        :total_amount => "9.99"
      )
    ])
  end

  it "renders a list of balances" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
