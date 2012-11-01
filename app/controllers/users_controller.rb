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
	@courses = @user.courses.where(ispublished: 1).paginate(page: params[:page], per_page: 5)
	@tutorials = @user.tutorials.where(ispublished: 1).paginate(page: params[:page], per_page: 5)
	@blogs = @user.blogs.where(ispublished: 1).paginate(page: params[:page], per_page: 5)
    @o_classes = @user.o_classes.paginate(page: params[:page], per_page: 5)
  end

  def index		
	@countUsersPerPage = 5
    # @users = User.paginate(page: params[:page], per_page: 5)
    @users = User.all
	@topics = Topic.all		
  end
end
