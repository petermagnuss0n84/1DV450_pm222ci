module Api
	module V1
		class TagsController < ApplicationController
			respond_to :json, :xml

			def index
				respond_with Tag.all
			end

		end
	end
end