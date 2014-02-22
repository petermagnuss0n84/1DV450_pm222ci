module Api
	module V1
		class UsersController < ApplicationController
			respond_to :json, :xml

			def index
				respond_with User.all
			end
			
		end
	end
end