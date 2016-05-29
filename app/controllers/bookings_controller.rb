class BookingsController < ApplicationController
  def create
    @quest = Quest.find(params[:quest_id])
    @booking = current_user.bookings.build(booking_params)

    if @booking.save
      redirect_to @quest
    else
      flash[:warning] = 'An error occured'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :quest_id)
  end
end
