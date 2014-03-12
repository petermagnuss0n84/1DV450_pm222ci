class ResourcesController < ApplicationController

def index
	@resources = Resource.all
	respond_to do |format|
		format.html
		format.json { render json: @resources}
	end
end

def new
	@resource = Resource.new
end

def create
	@resource = Resource.new(resource_params)

	if @resource.save
		redirect_to resources_path
	else
		render :action => "new"
	end
end

 private

#Använder mig av strong_parameters
 def resource_params
 	params.require(:resource).permit(:namn, :url, :description, :user_id, :resource_type_id, :licence_id, :resource_tag_id)
 end

end
