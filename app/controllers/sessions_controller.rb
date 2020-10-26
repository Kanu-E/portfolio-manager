class SessionsController < ApplicationController

    def new

    end
  
  
    def create
      @user = User.find_by(email: params[:email])  
      if @user && @user.authenticate(params[:password])
       redirect_to @user
      else
        redirect_to :login
      end
    end


    def destroy
        if session[:name].present?
        session.delete :name
        else
          redirect_to :login
        end
        
      end
end
