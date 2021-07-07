class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def new
    @student = Student.new
  end

   def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path(@student)
    else
      render :new
    end
  end

   def edit
    set_student
  end

  def update
    set_student  
  if @student.update
    redirect_to student_path(@student)
  else
    render :edit
    end
  end
  def destroy
    set_student
    @student.destroy
    redirect_to students_path
  end

   def activate
    set_student
    @student.update(active: !@student.active)
    redirect_to student_path(@student)
  end

   private

   def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

   def set_student
    @student = Student.find(params[:id])
  end
end