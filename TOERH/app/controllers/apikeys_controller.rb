class ApikeysController < ApplicationController
	before_action :require_login

	def show
	
	end

	def index

	end

	  private
  		#Kollar om det finns något objekt#
  		def current_user
  		@current_user ||= User.find(session[:userid]) if session[:userid]
 		end
 		
  		#Anropar metoden current_user och kollar om det är nil#
  		def require_login
		if current_user.nil? then
			redirect_to root_path
			end
  		end
end
