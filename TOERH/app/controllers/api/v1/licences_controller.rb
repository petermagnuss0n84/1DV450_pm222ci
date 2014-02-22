module Api
	module V1
		class LicencesController < ApplicationController
			respond_to :json, :xml

			def index
				respond_with Licence.all
			end

		end
	end
end