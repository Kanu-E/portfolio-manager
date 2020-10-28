class SessionsController < ApplicationController

    def new

    end
  
  
    def create
      @user = User.find_by(email: params[:email])  
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        redirect_to :login
      end
    end


    def destroy
        if session[:id].present?
        session.delete :id
         end
        redirect_to :root_url     
    end

    def omniauth
     
      @user = User.find_or_create_by(email: auth['info']['email']) do |u|
        u.first_name = auth['info']['name'].split(" ").first
        u.last_name = auth['info']['name'].split(" ").last 
        u.password = SecureRandom.hex
      end
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end

    private

    def auth
        request.env['omniauth.auth']
    end

    
end
