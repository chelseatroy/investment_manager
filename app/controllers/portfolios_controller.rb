class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /portfolios
  # GET /portfolios.json
  def index
    @portfolios = Portfolio.all

    render json: {portfolios: @portfolios}
  end

  # GET /portfolios/1
  # GET /portfolios/1.json
  def show
    render json: @portfolio
  end

  # POST /portfolios
  # POST /portfolios.json
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      render json: @portfolio, status: :created
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /portfolios/1
  # PATCH/PUT /portfolios/1.json
  def update
    if @portfolio.update(portfolio_params)
      render json: @portfolio, status: :ok
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /portfolios/1
  # DELETE /portfolios/1.json
  def destroy
    @portfolio.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_portfolio
    @portfolio = Portfolio.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def portfolio_params
    params.permit(:name)
  end
end
