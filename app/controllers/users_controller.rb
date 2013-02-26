class UsersController < ApplicationController
	include SessionsHelper
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
    @pending_courses = @user.courses.where(ispublished: 0).paginate(page: params[:page], per_page: 5)
	@pending_tutorials = @user.tutorials.where(ispublished: 0).paginate(page: params[:page], per_page: 5)
	@pending_blogs = @user.blogs.where(ispublished: 0).paginate(page: params[:page], per_page: 5)
  end

  def index		
	@countUsersPerPage = 5
    # @users = User.paginate(page: params[:page], per_page: 5)
    if signed_in? && current_user.user_type == 3
    	@users = User.all
    else
    	@users = User.where(user_type: 2)
    end
    
	@topics = Topic.all		
  end
end
