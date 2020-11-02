class HoldingsController < ApplicationController
  before_action :set_holding, only: [:show, :edit, :update]
  before_action :require_login

  def show
  end

  def new
    @holding = Holding.new(finance_id: params[:finance_id])
    @holding.build_finance
    if params[:finance_id]
    @finance = Finance.find(params[:finance_id])
    end
  end

  def edit
  end

  def create
    raise params.inspect
    @holding = Holding.new(holding_params)
    if @holding.save
    redirect_to @holding, notice: 'Holding was successfully created.' 
    else
    render :new 
    end
  end

  private
  
  def set_holding
    @holding = Holding.find(params[:id])
  end

  def holding_params
    params.require(:holding).permit(:name, :finance_id, :portfolio_id)
  end

end
