class StaticController < ApplicationController
  # landing page
  def home
    @quests = Quest.all
    if signed_in?
      @status = 'user'
    else
      @status = 'non_user'
    end
    render template: "static/#{@status}_home"
  end

  def dashboard
  end
end