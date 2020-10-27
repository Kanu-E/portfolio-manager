class ApplicationController < ActionController::Base

    def current_user
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end
 
    def require_login
        unless current_user
          redirect_to root_url
        end
    end

end
