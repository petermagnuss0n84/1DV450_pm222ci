class ResourcesController < ApplicationController

def index
	@resources = Resource.all
	@users = User.all
	#@user = User.find(params[:id])
	@resource_types = ResourceType.all
	@tags = Tag.all
end

def new
	@resource = Resource.new
end

def create
	@resource = Resource.new(params[:resource])

	if @resource.save
		redirect_to resources_path
	else
		render :action => "new"
	end
end

end
