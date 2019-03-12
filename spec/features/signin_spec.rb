# frozen_string_literal: true

require 'rails_helper'
require 'capybara/rails'
Rspec.feature 'Sign in', type: :feature do
  let(:user) { FactoryGirl.create(:user) }
  def fill_in_signin_fields
    fill_in 'user[:email]', with: user.email
    fill_in 'user[:password]', with: user.password
    click_button 'Log in'
  end

  scenario 'visiting the site to sign in' do
    visit user_session_path
    fill_in_signin_fields
    expect(page).to have_content('Signed in successfuly')
  end
end
