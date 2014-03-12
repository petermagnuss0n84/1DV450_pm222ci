module Api
	module V1
		class ResourceTypesController < ApplicationController
			respond_to :json, :xml

			def index
				@resourceType = ResourceType.all

				respond_with @resourceType

				rescue
        			error(404, 'Resurstyperna hittades inte')
			end

			def show
				@resourceType = ResourceType.find(params[:id])

				respond_with @resourceType

				rescue
        			error(404, 'Resurstypen hittades inte')
			end

		end
	end
end