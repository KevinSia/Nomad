class WishesController < ApplicationController
  def create
    @quest = Quest.find(params[:quest_id])
    @wish = current_user.wishes.build(wish_params)

    if @wish.save
      redirect_to @quest
    else
      flash[:warning] = 'An error occured'
    end
  end

  private

  def wish_params
    params.require(:wish).permit(:start_date, :end_date)
  end
end
