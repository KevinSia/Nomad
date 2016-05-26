class QuestsController < ApplicationController
  before_action :check_user, only: [:edit, :update]
  before_action :find_quest, except: [:new, :create]

  def new
    @quest = Quest.new
    @quest.activities.build
  end

  def create
    @quest = current_user.quests.new(quest_params)
    if @quest.save
      redirect_to @quest
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @quest.update(quest_params)
      redirect_to @quest
    else
      render :edit
    end
  end

  private

  def find_quest
    @quest = Quest.find(params[:id])
  end

  def quest_params
    params.require(:quest).permit(:title, :duration, :country, :city,
                                  :category, :description,
                                  activities_attributes: [:day, :description, :estimated_time, :location, :price, :references])
  end
end
