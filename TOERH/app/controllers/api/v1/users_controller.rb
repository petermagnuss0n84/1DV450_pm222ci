module Api
	module V1
		class UsersController < ApplicationController
			respond_to :json, :xml

			def index
				respond_with User.all
			end

			def show
				@user = User.find(params[:id])

				respond_with @user

			end

			def create
				respond_with User.create(params[:user])
			end

			def update
				respond_with User.update(params[:id], params[:user])
			end

			def destroy
				respond_with User.destroy(params[:id])
			end
			
		end
	end
end       