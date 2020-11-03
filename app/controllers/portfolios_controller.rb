class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update]
  before_action :require_login, except: [:index]

  def index
      @portfolios = User.find(current_user.id).portfolios
  end


  def show
    @holdings = @portfolio.holdings
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

  private
  
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    def portfolio_params
      params.require(:portfolio).permit(:name, :code, :user_id)
    end
end
