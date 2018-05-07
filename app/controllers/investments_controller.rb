class InvestmentsController < ApplicationController
  before_action :set_investment, only: [:show, :update, :destroy]

  # GET /investments
  # GET /investments.json
  def index
    @investments = Investment.all
  end

  # GET /investments/1
  # GET /investments/1.json
  def show
  end

  # POST /investments
  # POST /investments.json
  def create
    @investment = Investment.new(investment_params)

    if @investment.save
      render :show, status: :created, location: @investment
    else
      render json: @investment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /investments/1
  # PATCH/PUT /investments/1.json
  def update
    if @investment.update(investment_params)
      render :show, status: :ok, location: @investment
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
      params.fetch(:investment, {})
    end
end
