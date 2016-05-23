class StaticController < ApplicationController
  # landing page
  def home
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