class TeachersController < ApplicationController
  access all: [:show, :index], user: {except: [:destroy, :create, :edit, :update]}, admin: :all

  # one other option that might seem a bit weird is to put a group of roles in an array:
  # access [:all, :user] => [:show, :index]

  def index
    @teachers = Teacher.all
    @teacher = Teacher.new
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new
    # User.create(email: params[:email], first_name:, roles: [:teacher])
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
