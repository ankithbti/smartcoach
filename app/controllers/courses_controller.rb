class CoursesController < ApplicationController


	def index
		@countCoursesPerPage = 5
    	@courses = Course.paginate(page: params[:page], per_page: 5)
		@topics = Topic.all
  	end


	def new
		@course = Course.new
	end


	def create
		@course = Course.new(params[:course])
		if @course.save
			flash[:success] = "Course added successfully!!!!"
			redirect_to courses_show_path
		else
			render 'new'
		end
	end

	def edit
    	@course = Course.find(params[:id])
  	end

  	def update
	    @course = Course.find(params[:id])
	    if @course.update_attributes(params[:course])
	      redirect_to @course, notice: "Successfully updated topic."
	    else
	      render :edit
	    end
  	end


	def show
		# Just to redirect, needed due to button click event
		# @courses = Course.paginate(page: params[:page], per_page: 3)
		# @topics = Topic.all
		#@courses = Course.all
	end
end
