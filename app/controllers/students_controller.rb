class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end 

    def create
        # @student = Student.create(first_name: params[:first_name], last_name: params[:last_name])
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end 

    def show
        @student = Student.find(params[:id])
    end

    def edit 
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(student_params)

        redirect_to student_path(@student)
    end

    private

    def student_params
      params.require(:student).permit!
    end
end