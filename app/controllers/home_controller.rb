class HomeController < ApplicationController
  def index
    @teacher = Teacher.all
    # if user_signed_in?
    #   redirect_to edit_user_registration_path
    # else
    #   redirect_to home_index_path
    # end
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
