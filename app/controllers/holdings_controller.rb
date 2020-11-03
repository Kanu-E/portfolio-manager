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
    @holding = Holding.new(holding_params)
    if @holding.save
    redirect_to @holding, notice: 'Holding was successfully created.' 
    else
    render :new 
    end
  end

  def update
    if @holding.update(holding_params)
     redirect_to @holding, notice: 'Holding was successfully updated.' 
   else
    render :edit
   end
end


  private
  
  def set_holding
    @holding = Holding.find(params[:id])
  end

  def holding_params
    params.require(:holding).permit(:cost, :finance_id, :portfolio_id, finance_attributes: [:name, :ticker, :current_value])
  end

end
