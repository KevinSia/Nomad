class BookingsController < ApplicationController
  def create
    @quest = Quest.find(params[:quest_id])
    @booking = current_user.bookings.build(booking_params)
    nonce = params[:payment_method_nonce]

    redirect_to @quest and return unless nonce

    result = Braintree::Transaction.sale(
      amount: "#{@quest.total_price}",
      payment_method_nonce: params[:payment_method_nonce]
    )

    # reserve to save the transaction details into database
    if result.success? && @booking.save
      flash[:success] = 'Booking success!'
      redirect_to @quest
    else
      flash[:warning] = 'An error occured'
      redirect_to @quest
    end
  end
  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :quest_id)
  end
end