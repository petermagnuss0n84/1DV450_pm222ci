module Api
	module V1
		class ResourceTypesController < ApplicationController
			respond_to :json, :xml

			def index
				respond_with ResourceType.all
			end

		end
	end
end