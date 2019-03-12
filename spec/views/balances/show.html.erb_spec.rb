require 'rails_helper'

RSpec.describe "balances/show", type: :view do
  before(:each) do
    @balance = assign(:balance, Balance.create!(
      :user => nil,
      :total_amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
  end
end
