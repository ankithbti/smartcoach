class UsersController < ApplicationController
    def new
	@user = User.new
  end
	
  def create
	@user= User.new(params[:user])
	if @user.save
		sign_in @user
		flash[:success] = "User added successfully!!!!"	
		redirect_to @user
	else	
		
		render 'new'		
	end	
	
	end	
	
  def show		
	@user = User.find(params[:id])
	@courses = @user.courses.paginate(page: params[:page])
	@topics = Topic.all		
  end

  def index		
	@countUsersPerPage = 5
    	@users = User.paginate(page: params[:page], per_page: 5)
	@topics = Topic.all		
  end
end
