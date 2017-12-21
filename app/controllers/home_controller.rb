class HomeController < ApplicationController
  def index
    @teacher = Teacher.all
    if user_signed_in?
      redirect_to root_path
    # else
    #   redirect_to root_path
    end
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
