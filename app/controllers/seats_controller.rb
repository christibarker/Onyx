class SeatsController < ApplicationController
    def index
   
    @seat = Seat.new
    @seats = Seat.all
  end

  def new
    @seat = Seat.new
  end

  def create
    @seat = Seat.new
    respond_to do |format|
      @seat = Seat.create(seat_params)
      format.js
      format.html{redirect_to seats_index_path}
    end
  end

  def show
    @seats = Seat.all
    @seat = Seat.find(params[:id])
  end

  def edit
    @seat = Seat.find(params[:id])
  end

  def update
    @seat = Seat.find(params[:id])
    @seat.update(show_params)
    redirect_to shows_path
  end

  def destroy
     respond_to do |format|
      @seat = Seat.find(params[:id]).destroy
      format.js
      format.html{redirect_to seats_path}
    end
  end

   def seat_params
    params.require(:seat).permit(:section, :id)
  end
end
