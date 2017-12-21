class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    @lesson = Lesson.new
  end

  def new
    @lesson = Lesson.new
  end

  def create
    
    @lesson = Lesson.new
    respond_to do |format|
      @lesson = Lesson.create(lesson_params)
      format.js
      format.html{redirect_to lessons_path}
    end
  end

  def show
    @lessons = Lesson.all
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @lesson = Lesson.find(params[:id])
    @lesson.avatar = nil
    @lesson.save
    
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(lesson_params)
    redirect_to lessons_path
  end

  def destroy
     respond_to do |format|
      @lesson = Lesson.find(params[:id]).destroy
      format.js
      format.html{redirect_to lessons_path}
    end
  end

   def lesson_params
    params.require(:lesson).permit(:name, :description, :id, :avatar, :workshop)
  end
end
