class ApplicationController < ActionController::Base

    def current_user
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end
 
    def logged_in?
        !!session[:user_id]
    end
end
