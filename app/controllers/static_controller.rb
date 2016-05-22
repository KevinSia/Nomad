class StaticController < ApplicationController
  def home
    if signed_in?
      @status = 'user'
    else
      @status = 'non_user'
    end
    render template: "static/#{@status}_home"
  end
end