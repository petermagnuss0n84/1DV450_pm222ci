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


private

def user_params
	params.require(:user).permit(:firstname, :surname, :email, :password, :password_confirmation)
end


end
