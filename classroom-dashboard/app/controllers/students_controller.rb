class StudentsController < ApplicationController
  before_action :find_section
  before_action :find_student, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :edit]


  def index
    @students = Student.all.order("lastname ASC")
  end

  def new
    @student = Student.new
  end

  def show
  end

  def create
    @student = Student.new(student_params)
    @student.section_id = @section.id
    @student.admin_id = current_admin.id


    if @student.save
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
      params.require(:student).permit(:image, :student_img, :firstName, :lastname, :pronouns, :info, :school)
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
