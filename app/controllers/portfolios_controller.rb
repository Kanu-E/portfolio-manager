class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update]
  before_action :require_login, except: [:index]

  def index
    if params[:user_id]
      @portfolios = User.find(params[:user_id]).portfolios
    else
      @portfolios = Portfolio.all
    end
  end


  def show
  end

  def new
    @portfolio = Portfolio.new(user_id: current_user.id)
  end

 
  def edit
  end


  def create
    @portfolio = Portfolio.new(portfolio_params)
      if @portfolio.save
      redirect_to @portfolio, notice: 'Portfolio was successfully created.' 
      else
      render :new 
      end
  end

  def update
       if @portfolio.update(portfolio_params)
        redirect_to @portfolio, notice: 'Portfolio was successfully updated.' 
      else
       render :edit
      end
  end

  # def destroy
  #   raise params.inspect
  #   @portfolio.destroy
  #  redirect_to portfolios_url, notice: 'Portfolio was successfully removed'
  # end

  private
  
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    def portfolio_params
      params.require(:portfolio).permit(:name, :code, :user_id)
    end
end
