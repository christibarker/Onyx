class EnrollmentsController < ApplicationController
  def index
    @lessons = Lesson.all
    @teachers = Teacher.all
    @enrollments = Enrollment.all
    @enrollment = Enrollment.new
    @instructed_classes = InstructedClass.all
  end

   def new
    @enrolement = InstructedClass.new
  end

  def create
    @lessons = Lesson.all
    @teachers = Teacher.all
    @instructed_classes = InstructedClass.all
    @enrollment = Enrollment.new
    respond_to do |format|
      @enrollment = current_user.enrollments.create(enrollment_params)
      format.js
      format.html{redirect_to instructed_classes_path}
    end
  end

  def show
    @lessons = Enrollment.all
    @enrollment = Enrollment.find(params[:id])
  end

  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  def update
    @enrollment = Enrollment.find(params[:id])
    @enrollment.update(enrollment_params)
    redirect_to enrollments_path
  end

  def destroy
     respond_to do |format|
      @enrollment = Enrollment.find(params[:id]).destroy
      format.js
      format.html{redirect_to enrollments_path}
    end
  end

  private

  def enrollment_params
    params.require(:enrollment).permit(:lesson_id, :teacher_id, :id, :avatar, :time, :duration, :instructed_class_id, :user_id)
  end
end
