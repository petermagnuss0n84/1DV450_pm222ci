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
	@resource = Resource.new(params[:resource])

	if @resource.save
		redirect_to resources_path
	else
		render :action => "new"
	end
end

end
