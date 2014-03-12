object @resource
attributes :id, :namn, :url, :description, :created_at, :updated_at


#Skapar child nodes

	child :user do
	attributes :id, :firstname
	end

	child :resource_type do
	attributes :id, :resource_type
	end

	child :licence do
	attributes :id, :licence_typ
	end

	#TODO fixa tags child