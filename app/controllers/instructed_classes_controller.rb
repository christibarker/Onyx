class InstructedClassesController < ApplicationController
  def index
  	@lessons = Lesson.all
    @teachers = Teacher.all
    @enrollments = Enrollment.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
