class StudentsController < ApplicationController
    
    # Controls Views for new
    def new
        @student = Student.new
    end

    # Controls the table creation logic
    def create
        @student = Student.new(s_param)
        @student.save

        redirect_to student_path(@student)
    end

    # Shows the given student found by the table ID
    def show
        @student = Student.find(params[:id])
    end

    # Controls Views for edit
    def edit
        @student = Student.find(params[:id])
    end
    
    # Controls the table update logic
    def update
        @student = Student.find(params[:id])
        @student.update(s_param)

        redirect_to student_path(@student)
    end

    private

    def s_param
        params.require(:student).permit(:first_name, :last_name)
    end

end