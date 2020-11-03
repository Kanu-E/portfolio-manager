class FinancesController < ApplicationController
    before_action :set_finance, only: [:show, :edit, :update]

    def show
    end
  
    def index
      @finances = Finance.query(params[:query])
    end

    def new
        @finance = Finance.new
    end
  
    def edit
  
    end
  
  
    def create 
      @finance = Finance.new(finance_params)
        if @finance.save
          redirect_to @finance, notice: 'Asset was successfully created.' 
        else
           render :new 
        end
    end
  
    def update   
        if @finance.update(finance_params)
          redirect_to @finance, notice: 'Asset was successfully updated.' 
        else
         render :edit 
        end
    end

  
    private
    
      def set_finance
        @finance = Finance.find(params[:id])
      end
  
      def finance_params
        params.require(:finance).permit(:name, :ticker, :current_value)
      end


end
