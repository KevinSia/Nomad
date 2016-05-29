class WishesController < ApplicationController
  def create
    @quest = Quest.find(params[:quest_id])
    @wish = current_user.wishes.build(quest_id: @quest.id)
    byebug
    if @wish.save
      flash[:success] = "This quest has been added to wishlist!"
      redirect_to @quest
    else
      flash.now[:warning] = 'An error occured'
      render 'quests/show'
    end
  end
end
