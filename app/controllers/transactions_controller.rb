class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[show edit update destroy]

  # GET /transactions
  # GET /transactions.json
  def index
    @transactions =
      Transaction.where(user: current_user).or(Transaction.where(transaction_with: current_user))
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new(transaction_state: 'withdrawal')
  end

  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)

    # rollback all db records once one fail
    transaction = @transaction.transaction do
      amount = transaction_params.dig(:amount).to_d
      @transaction.user.apply_withdrawal(amount)
      @transaction.transaction_with.apply_deposite(amount)
      # create a second transaction record for depoiste, this record useful for
      # history
      Transaction.create(
        amount: @transaction.amount, user: @transaction.transaction_with,
        transaction_state: 'deposite', transaction_with: @transaction.user
      )
      @transaction.save
    end

    respond_to do |format|
      if transaction
        format.html { redirect_to @transaction, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:user_id, :transaction_with_id, :transaction_state, :amount)
    end
end
