class ApikeysController < ApplicationController
	before_filter :require_login

	def show
		apikey = SecureRandom.hex(10)
		email = params[:email]

		app = ApiKey.create(auth_token: apikey, email: email)


		

		redirect_to apikey_path
	end

	def index

	end
end
