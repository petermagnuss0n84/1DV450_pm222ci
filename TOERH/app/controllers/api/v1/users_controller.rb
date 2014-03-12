module Api
	module V1
		class UsersController < ApplicationController
			respond_to :json, :xml

			def index
				@user User.all

				respond_with @user

				rescue
        			error(404, 'Användarna hittades inte')
			end

			def show
				@user = User.find(params[:id])

				respond_with @user

				rescue
        			error(404, 'Användaren kunde inte hittas')

			end

			def create
				@user = User.create(params[:user])

				respond_with @user
			end

			def update
				@user = User.update(params[:id], params[:user])

				respond_with @user
			end

			def destroy
				@user = User.destroy(params[:id])

				respond_with @user
			end
			
		end
	end
end       