class UsersController < ApplicationController
	expose(:review)
	
	def index
		@user_reviews = Review.where(user_id: current_user.id)
	end

end