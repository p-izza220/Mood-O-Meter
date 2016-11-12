class WelcomeController < ApplicationController
	

	def index
		
	end

	def new 
		@custom = Custom.new
	end 

	def create
		@user = User.find_by_id(current_user.id) 
	end

	def edit 
		@user = User.find(params[:id])
		@custom = Custom.new
		@custom.user = @user
		@custom.save
			# if @custom.save
			# 	redirect_to '/'
			# end
	end

	def update
	 	@user = User.find(params[:id])
	 	@user.update(
      		zip_code: params[:user][:zip_code],
      		income: params[:user][:income],
      		relationship: params[:user][:relationship],
      		education: params[:user][:education],
      		political: params[:user][:political],
      		ethnicity: params[:user][:ethnicity],
      		religion: params[:user][:religion],
   		)
	end
end
