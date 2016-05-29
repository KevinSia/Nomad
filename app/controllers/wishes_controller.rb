class WishesController < ApplicationController
  def create
    @quest = Quest.find(params[:quest_id])
    @wish = current_user.wishes.build(quest_id: @quest)

    if @wish.save
      redirect_to @quest
    else
      flash[:warning] = 'An error occured'
    end
  end
end
