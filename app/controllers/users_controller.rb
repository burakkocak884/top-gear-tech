class UsersController < ApplicationController
	

	def index
		@users = USer.all
	end
	def show
 @user = current_user

	end
	

	def create


	end
	

	
end
