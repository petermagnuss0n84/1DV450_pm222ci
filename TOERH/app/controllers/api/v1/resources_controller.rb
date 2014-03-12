module Api
	module V1
		class ResourcesController < ApplicationController

			#http__basic_authenticate_with :name => "admin", :password => "123"
			before_action :restrict_access, except: [:index, :show]

			respond_to :json, :xml

			def index
				@resource = Resource.all.offset(params[:offset] || 0).limit(params[:limit] || 20)
				respond_with @resource

				rescue
        			error(404, 'Resurserna hittades inte')
			end

			def show
				@resource = Resource.find(params[:id])

        		respond_with @resource	

        		rescue
        			error(404, 'Resursen hittades inte')
			end

			def create
				@resource = Resource.new
				@resource.namn = resource_params[:namn]
				@resource.url = resource_params[:url]
				@resource.description = resource_params[:description]
				@resource.user_id = resource_params[:user_id]
				@resource.resource_type_id = resource_params[:resource_type_id]
				@resource.resource_tag_id = resource_params[:resource_tag_id]
				@resource.save

				render 'api/v1/resources/show'

				rescue
        			error(400, 'Resursen kunde inte skapas')
				
			end

			def update
				@resource = Resource.update(params[:id], params[:resource])

				respond_with @resource

				rescue
        			error(400, 'Resursen kunde inte sparas')
			end

			def destroy
				@resource = Resource.destroy(params[:id])

				respond_with @resource

				render 'api/v1/resources/show'

				rescue
					error(404, 'Resursen kunde inte tas bort')
			end

			def resource_params
 				params.permit(:namn, :url, :description, :user_id, :resource_type_id, :licence_id, :resource_tag_id)
 			end


		end
	end
end