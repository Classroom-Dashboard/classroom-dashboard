class StudentsController < ApplicationController
  before_action :find_student, only: [:show, :update, :destroy]

  def index
    @students = Student.all.order("lastname ASC")
  end

  def new
    @student = Student.new
  end

  def show
  end

  
  #  creates a list of students added
  def student_list
    @students = Student.all.order("lastname ASC")
  end

# when /randomize page loads, a random student is loaded into @student
  def randomize
    @student = Student.order("RANDOM()").limit(1)[0]
  end

  

  # saves new student and reloads index page
  def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def student_params
      params.require(:student).permit(:student_img, :firstName, :lastname, :pronouns, :info)
    end

    def find_student
      @student = Student.find(params[:id])
    end

end
