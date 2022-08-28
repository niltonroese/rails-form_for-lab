class StudentsController < ApplicationController
   
    def show
      @student = Student.find(params[:id])
    end
  
    def new
      @student = Student.new
    end
  
    def create
    #   @student = Student.new(params.require(:student).permit(:first_name, :last_name))
    #   @student.save
        @student = Student.create(student_params)
      redirect_to student_path(@student)
    end
  
    # add edit and update methods here
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
        params.require(:student).permit(:first_name, :last_name)
    end

  end
  