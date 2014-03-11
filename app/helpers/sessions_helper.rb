module SessionsHelper
	def sign_in(user)
    remember_token = User.new_remember_token
   	cookies[:remember_token] = { value:   remember_token,
                             expires: 20.years.from_now.utc }
    user.update_attribute(:remember_token, User.hash(remember_token))
    self.current_user = user
 	end
end
