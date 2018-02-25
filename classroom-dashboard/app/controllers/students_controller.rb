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

  # see app/models/concerns/randomable.rb
  def randomize
    @student = Student.random
  end

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
      params.require(:student).permit(:firstName, :lastname, :pronouns, :info)
    end

    def find_student
      @student = Student.find(params[:id])
    end

end
