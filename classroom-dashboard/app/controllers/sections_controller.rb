class SectionsController < ApplicationController

	# Find the section before any other action
	before_action :find_section, only: [:show, :edit, :update, :destroy]

	# Order in which the sections are listed on the home page
	def index
		@section = Section.all.order("year DESC")
	end

	def show
	end

	# Create a new Section
	def new
		@section = Section.new
	end

	def edit
	end

	# Ability to update/edit the fields of a Section
	def update
		# If Section is updated successfully
		if @section.update(section_params)
			# Redirect page to home page
			redirect_to section_path(@section)
		else
			# Display form to edit Section info
			render 'edit'
		end
	end

	# Ability to delete a Section
	def destroy
		@section.destroy
		redirect_to root_path
	end

	# Ability to create a new Section
	def create
		@section = Section.new(section_params)

		# If creation is successful, redirect to home page
		if @section.save
	      redirect_to root_path
	    else
	      # Display form to input fields for new Section
	      render 'new'
	    end
	end

	private

		# Define what fields are required to edit or create a new Section
		def section_params
			params.require(:section).permit(:course, :semester, :year, :professor)
		end

		# Find the section by it's ID
		def find_section
			@section = Section.find(params[:id])
		end
end
