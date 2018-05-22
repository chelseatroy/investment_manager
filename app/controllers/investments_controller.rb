class InvestmentsController < ApplicationController
  before_action :set_investment, only: [:show, :update, :destroy]

  # GET /investments
  # GET /investments.json
  def index
    @investments = Investment.all

    render json: {investments: @investments}
  end

  # GET /investments/1
  # GET /investments/1.json
  def show
    render json: @investment
  end

  # POST /investments
  # POST /investments.json
  def create
    @investment = Investment.new(investment_params)

    if @investment.save
      render json: @investment, status: :created
    else
      render json: @investment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /investments/1
  # PATCH/PUT /investments/1.json
  def update
    if @investment.update(investment_params)
      render json: @investment, status: :ok
    else
      render json: @investment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /investments/1
  # DELETE /investments/1.json
  def destroy
    @investment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investment
      @investment = Investment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investment_params
      params.permit(:name, :number_of_shares, :free_float_percentage)
    end
end
