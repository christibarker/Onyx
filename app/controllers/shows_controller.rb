class ShowsController < ApplicationController
  def index
    @shows = Show.all
    @show = Show.new
    @seats = Seat.all
     # @seat = Seat.find(show_params[:seat_id])
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new
    respond_to do |format|
      @show = Show.create(show_params)
      format.js
      format.html{redirect_to shows_path}
    end
  end

  def show
    @show = Show.all
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
    redirect_to shows_path
  end

  def destroy
     respond_to do |format|
      @show = Show.find(params[:id]).destroy
      format.js
      format.html{redirect_to shows_path}
    end
  end

   def show_params
    params.require(:show).permit(:title, :description, :date, 
      :time, :id, :avatar, :seat_id)
  end
end
