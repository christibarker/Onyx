class HomeController < ApplicationController
  def index
    @teacher = Teacher.all
  end

  def contact_us
    
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

  def lesson_params
    params.require(:contact).permit(:name, :email, :id, :subject, :message)
  end
end
