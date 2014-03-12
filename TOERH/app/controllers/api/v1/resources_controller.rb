module Api
	module V1
		class ResourcesController < ApplicationController

			#http__basic_authenticate_with :name => "admin", :password => "123"
			#before_action :restrict_access
			respond_to :json, :xml

			def index
				@resource = Resource.all.offset(params[:offset] || 0).limit(params[:limit] || 20)
				respond_with @resource

				rescue
        			error(404, 404, 'Resurserna hittades inte')
			end

			def show
				@resource = Resource.find(params[:id])

        		respond_with @resource	

        		rescue
        			error(404, 404, 'Resursen hittades inte')
			end

			def create
				@resource = Resource.create(params[:resource])

				respond_with @resource
			end

			def update
				@resource = Resource.update(params[:id], params[:resource])

				respond_with @resource
			end

			def destroy
				@resource = Resource.destroy(params[:id])

				respond_with @resource
			end

			def resource_params
 				params.permit(:namn, :url, :description, :user_id, :resource_type_id, :licence_id, :resource_tag_id)
 			end

 			
 			#private
 				#def restrict_access
 				#	api_key = ApiKey.find_by_auth_token(params[:auth_token])
 				#	head :unauthorized unless api_key
 				#end

 				#Skyddar mot klipp och klistra lösenord i url
 				 private
    				def restrict_access
      				authenticate_or_request_with_http_token do |token, options|
        			ApiKey.exists?(auth_token: token)
      				end
    			
 			end
 			

		end
	end
end