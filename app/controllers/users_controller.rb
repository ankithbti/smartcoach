class UsersController < ApplicationController
    def new
	@user = User.new
  end
	
  def create
	@user= User.new(params[:user])
	if @user.save
		flash[:success] = "User added successfully!!!!"	
		redirect_to @user
	else	
		
		render 'new'		
	end	
	
	end	
	
  def show		
	@user = User.find(params[:id])
	#@courses = Course.paginate(page: params[:page], per_page: 3)		
	@courses = Course.all #here we need to fetch only courses related to user from databse	
		
  end
end
