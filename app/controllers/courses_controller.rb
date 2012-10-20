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
			redirect_to @course
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
		@course = Course.find(params[:id])
		# Just to redirect, needed due to button click event
		# @courses = Course.paginate(page: params[:page], per_page: 3)
		# @topics = Topic.all
		#@courses = Course.all
	end

	def destroy
	    @course = Course.find(params[:id])
	    @course.destroy
	    flash[:success] = "Successfully destroyed course."
	    redirect_to courses_url
  	end
end
