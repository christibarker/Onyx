class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    @teacher = Teacher.new
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new
    respond_to do |format|
      @teacher = Teacher.create(teacher_params)
      format.js
      format.html{redirect_to teachers_path}
    end
  end

  def show
    @lessons = Teacher.all
    @teacher = Teacher.find(params[:id])
  end

  def edit
    @teacher = Teacher.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:id])
    @teacher.update(teacher_params)
    redirect_to teachers_path
  end

  def destroy
     respond_to do |format|
      @teacher = Teacher.find(params[:id]).destroy
      format.js
      format.html{redirect_to teachers_path}
    end
  end

   def teacher_params
    params.require(:teacher).permit(:name, :bio, :id, :avatar)
  end
end
