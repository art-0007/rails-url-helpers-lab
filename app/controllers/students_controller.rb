class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = set_student
    if @student.active == false
      @active  = "inactive"
    else
      @active  = "active"
    end
  end

  def activate
    @student = set_student
    if @student.active == true
      @student.active = false
    else
      @student.active = true
    end
      @student.save
      redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end