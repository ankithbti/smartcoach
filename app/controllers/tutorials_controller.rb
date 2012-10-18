class TutorialsController < ApplicationController
	def index
		@countTutorialsPerPage = 5
    	@tutorials = Tutorial.paginate(page: params[:page], per_page: 5)
		@groups = Group.all
  	end


	def new
		@tutorial = Tutorial.new
	end


	def create
		@tutorial = Tutorial.new(params[:tutorial])
		if @tutorial.save
			flash[:success] = "Tutorial added successfully!!!!"
			redirect_to tutorials_show_path
		else
			render 'new'
		end
	end

	def edit
    	@tutorial = Tutorial.find(params[:id])
  	end

  	def update
	    @tutorial = Tutorial.find(params[:id])
	    if @tutorial.update_attributes(params[:tutorial])
	      redirect_to @tutorial, notice: "Successfully updated Tutorial."
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
