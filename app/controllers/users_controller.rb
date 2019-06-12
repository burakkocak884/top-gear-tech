class UsersController < ApplicationController
	

	def index
		@users = User.all
	end
	

	def show
      @user = current_user
       respond_to do |format|
          format.html { render :show}
          format.json {render json: @user}
        end
	end
	

	def create
	end
	

	
end
