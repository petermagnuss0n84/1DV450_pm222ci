class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #private
 	#def restrict_access
 	#	api_key = ApiKey.find_by_auth_token(params[:auth_token])
 	#	head :unauthorized unless api_key
 	#end

 	#Skyddar mot klipp och klistra lösenord i url
 				 private
    				def restrict_access
      				authenticate_or_request_with_http_token do |token, options|
        			ApiKey.exists?(auth_token: token)
      				end
      			end
 
end
