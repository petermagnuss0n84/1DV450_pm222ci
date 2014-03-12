class UsersController < ApplicationController

def index
	
end

def new
	@user = User.new
end

def create
	@user = User.new(user_params)

	if @user.save
		session[:userid] = @user.id
		redirect_to apikey_path
	else
		render :action => "new"
	end	

end

#Inloggningsmetoder#

def login
	u = User.find_by_email(params[:email])
	if u && u.authenticate(params[:password])
		session[:userid] = u.id
		redirect_to apikey_path
	else
		flash[:notice] = "Inloggning misslyckades!"
		redirect_to root_path
	end	
end

def logout
	session[:userid] = nil
	redirect_to root_path
end	

#Använder mig av strong_parameters
 private

 def user_params
 	params.require(:user).permit(:firstname, :surname, :email, :password, :password_confirmation, :password_digest)
 end


end
