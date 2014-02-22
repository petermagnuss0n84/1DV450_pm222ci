module Api
	module V1
		class ResourcesController < ApplicationController
			respond_to :json, :xml

			def index
				respond_with Resource.all
			end

			def show
				respond_with Resource.find(params[:id])
			end

			def create
				respond_with Resource.create(params[:resource])
			end

			def update
				respond_with Resource.update([:id], [:resource])
			end

			def destroy
				respond_with Resource.destroy([:id])
			end

		end
	end
end