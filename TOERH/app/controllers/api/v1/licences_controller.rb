module Api
	module V1
		class LicencesController < ApplicationController
			respond_to :json, :xml

			def index
				@licence = Licence.all

				respond_with @licence
			end

			def show
				@licence = Licence.find(params[:id])

				respond_with @licence
			end

		end
	end
end