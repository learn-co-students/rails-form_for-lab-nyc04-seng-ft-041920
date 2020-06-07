class SchoolClassesController < ApplicationController

  

  

  # def update
  #   @class = SchoolClass.find(params[:id])
	#   @class.update(params.require(:class).permit(:title, :room_number))
	#   redirect_to student_path(@class)
  # end
  # 
  

  def new
    @class = SchoolClass.new
  end

  def show
    @class = SchoolClass.find(params[:id])
  end


  def  edit
    @class = SchoolClass.find(params[:id])
  end

  def create
    @class = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @class.save
    redirect_to school_class_path(@class)
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@class)
  end

  # private

  # def school_class_params
  #   params.require(:school_class).permit!
  #   params.require(:school_class).permit(:title, :room_number)
  # end
end