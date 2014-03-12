class ApiKey < ActiveRecord::Base
  # attr_accessible :title, :body

    #attr_accessible :email
    #attr_accessible :auth_token

    before_create :generate_auth_token

    
    	def generate_auth_token
    		begin
    		self.auth_token = SecureRandom.hex
    		end while self.class.exists?(auth_token: auth_token) 
    	end
	


end
