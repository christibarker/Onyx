class InstructedClassesController < ApplicationController
  def index
  	@lessons = Lesson.all
    @teachers = Teacher.all
    @enrollments = Enrollment.all
    @enrollment = Enrollment.new
    @instructed_class = InstructedClass.new
    @instructed_classes = InstructedClass.all
  end

   def new
    @instructed_class = InstructedClass.new
  end

  def create
    @lessons = Lesson.all
    @teachers = Teacher.all
    @instructed_class = InstructedClass.new
    respond_to do |format|
      @instructed_class = InstructedClass.create(instructed_class_params)
      format.js
      format.html{redirect_to instructed_classes_path}
    end
  end

  def show
    @lessons = InstructedClass.all
    @instructed_class = InstructedClass.find(params[:id])
  end

  def edit
    @instructed_class = InstructedClass.find(params[:id])
  end

  def update
    @instructed_class = InstructedClass.find(params[:id])
    @instructed_class.update(instructed_class_params)
    redirect_to instructed_classes_path
  end

  def destroy
     respond_to do |format|
      @instructed_class = InstructedClass.find(params[:id]).destroy
      format.js
      format.html{redirect_to instructed_classes_path}
    end
  end

  private

  def instructed_class_params
    params.require(:instructed_class).permit(:lesson_id, :teacher_id, :id, :avatar, :time, :duration, :enrollment, :class_size)
  end
end
