module Api
	module V1
		class TagsController < ApplicationController
			respond_to :json, :xml

			def index
				@tag = Tag.all

				respond_with @tag
			end

			def show
				@tag = Tag.find(params[:id])

				respond_with @tag
			end

		end
	end
end