class SchoolClassesController < ApplicationController

    # Controls Views for new
    def new
        @school_class = SchoolClass.new
    end

    # Controls the table creation logic
    def create
        @school_class = SchoolClass.new(sc_param)
        @school_class.save

        redirect_to school_class_path(@school_class)
    end

    # Shows the given student found by the table ID
    def show
        @school_class =  SchoolClass.find(params[:id])
    end

    # Controls Views for edit
    def edit
        @school_class = SchoolClass.find(params[:id])
    end
    
    # Controls the table update logic
    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(sc_param)

        redirect_to school_class_path(@school_class)
    end
    

  private

  def sc_param
    params.require(:school_class).permit(:title, :room_number)
  end

end


