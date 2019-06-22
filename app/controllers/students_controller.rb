class StudentsController < ApplicationController
  before_action :set_student, only: :show
  def index
    @students = Student.all
  end

  def show
    @student = set_student
    @status = nil

    if @student.active == false
      @status = "This student is currently inactive."
    elsif @student.active == true
      @status = "This student is currently active."
    end

    render '/students/show.html.erb'
  end

  def activate
    @student = set_student
    if @student.active == false
      @student.active = true
    else
      @student.active = false
    end
    @student.save
   redirect_to("/students/#{params[:id]}")
  end
  
  private

    def set_student
      @student = Student.find(params[:id])
    end
end