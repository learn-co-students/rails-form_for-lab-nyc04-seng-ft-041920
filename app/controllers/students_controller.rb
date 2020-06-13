class StudentsController < ApplicationController

    def show
      @student = Student.find(params[:id])
    end

    def new
      @student = Student.new
    end

    def create
      @student = Student.create(student_params)
      @student.save

      redirect_to @student
    end
    

    def edit
     @student = Student.find(params[:id])
    end

    def update
     @student = Student.find(params[:id])
     @studetn = Student.update(student_params)

     redirect_to @student
    end

    private

    def student_params 
        params.require(:student).permit!
    end

end