class SessionsController < ApplicationController

    def new
        @user = User.find_by(email: params[:email]) 
    end
  
    def create
      @user = User.find_by(email: params[:email])  
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to @user
      else
        @error = 'Log in failed. Please try again.'
        render :new
      end
    end

    def omniauth 
      @user = User.find_or_create_by(email: auth['info']['email']) do |u|
        u.first_name = auth['info']['name'].split(" ").first
        u.last_name = auth['info']['name'].split(" ").last 
        u.password = SecureRandom.hex
      end
      session[:user_id] = @user.id
      redirect_to @user
    end
    
    def destroy
      
        if session[:user_id].present?
        session.delete :user_id
         end
        redirect_to :root    
    end


    private

    def auth
        request.env['omniauth.auth']
    end

    
end
