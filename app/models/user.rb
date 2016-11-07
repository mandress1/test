class User < ActiveRecord::Base
  self.primary_key = :user_id
        
  def User::create_user!(user_params)
    user_params[:session_token] = SecureRandom.base64
    User.create!(user_params)
	end
end
