class CoursesController < ApplicationController

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


	def show
		@courses = Course.paginate(page: params[:page], per_page: 2)
		#@courses = Course.all
	end
end
