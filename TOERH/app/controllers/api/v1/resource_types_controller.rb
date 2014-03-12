module Api
	module V1
		class ResourceTypesController < ApplicationController
			respond_to :json, :xml

			def index
				@resourceType = ResourceType.all

				respond_with @resourceType
			end

			def show
				@resourceType = ResourceType.find(params[:id])

				respond_with @resourceType
			end

		end
	end
end