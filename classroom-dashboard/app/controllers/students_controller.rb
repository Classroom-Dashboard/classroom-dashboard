class StudentsController < ApplicationController
  before_action :find_student, only: [:edit, :show, :update, :destroy]
  before_action :find_section

  def index
    @students = Student.all.order("lastname ASC")
  end

  def new
    @student = Student.new
  end

  def show
  end

  # this function currently not used
  #  creates a list of students added
  def student_list
    @students = Student.all.order("lastname ASC")
  end


  # saves new student and reloads index page
  def create
    @student = Student.new(student_params)
    @student.section_id = @section.id

    if @student.save
      # redirect to section page when done
      redirect_to section_path(@section)
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    if @student.update(student_params)
      redirect_to section_path(@section)
    else
      render 'edit'
    end
  end

  def destroy
    @student.destroy
    redirect_to section_path(@section)
  end


  private

    def student_params
      params.require(:student).permit(:student_img, :firstName, :lastname, :pronouns, :info, :school)
    end

    # finds a student's id
    def find_student
      @student = Student.find(params[:id])
    end

    # finds what section a student is in
    def find_section
      @section = Section.find(params[:section_id])
    end

end
