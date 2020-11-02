class HoldingsController < ApplicationController

  def show
  end

  def new
    @holding = Holding.new(finance_id: params[:finance_id])
    @finance = Finance.find(params[:finance_id])
  end

  def edit
  end

  def create
    raise params.inspect
  end
end
