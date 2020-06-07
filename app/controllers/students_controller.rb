class StudentsController < ApplicationController

  
  def index
    @students = Student.all
  end

  def  show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def  edit
    @student = Student.find(params[:id])
  end

  # def create
  #   # @student = Student.new
  #   # @student.first_name = params[:first_name]
  #   # @student.last_name = params[:last_name]
  #   # @student.save

  #   # redirect_to student_path(@student)
  # end
  
  def create
    @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def student_params
    # params.require(:student).permit!
    params.require(:student).permit(:first_name, :last_name)
  end
  
end