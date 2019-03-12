# frozen_string_literal: true

# parent class of controllers
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordInvalid, with: :show_errors

  private

  def show_errors(exception)
    redirect_to transactions_path
  end
end
