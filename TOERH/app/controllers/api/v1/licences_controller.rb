module Api
	module V1
		class LicencesController < ApplicationController
			respond_to :json, :xml

			def index
				@licence = Licence.all

				respond_with @licence

				rescue
        			error(404, 'Licenserna hittades inte')
			end

			def show
				@licence = Licence.find(params[:id])

				respond_with @licence

				rescue
        			error(404, 'Licensen hittades inte')
			end

		end
	end
end