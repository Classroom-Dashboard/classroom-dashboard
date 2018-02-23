class StudentsController < ApplicationController
  def index
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
  end

  private

    def student_params
      params.require(:student).permit(:firstName, :lastName, :classes, :info)
    end

end
