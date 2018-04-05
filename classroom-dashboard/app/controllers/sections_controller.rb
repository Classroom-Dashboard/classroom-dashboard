class SectionsController < ApplicationController

  # Find the section ID before any other action
  before_action :find_section, only: [:show, :edit, :update, :destroy, :flashcards]

  def index
    @section = Section.all.order("semester DESC")
  end

  def show
  end

  def new
    @section = current_admin.sections.build
  end

  def edit
    @Student = Student.find(params[:id])
  end

  # TODO: re-implement random flashcards (currently works by reloading page)
  def flashcards
  end


  def update
    # If Section is updated successfully
    if @section.update(section_params)
      redirect_to section_path(@section)
    else
    # Display form to edit Section info
      render 'edit'
    end
  end

  def destroy
    @section.destroy
      redirect_to root_path
  end

  def create
    @section = current_admin.sections.build(section_params)

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
