class SessionsController < Clearance::SessionsController

  def create
    @user = authenticate(params)

    sign_in(@user) do |status|
      if status.success?
        flash[:success] = 'Welcome :)'
        redirect_back_or url_after_create
      else
        flash.now.notice = status.failure_message
        render template: "sessions/new", status: :unauthorized
      end
    end
  end

  def destroy
    sign_out
    flash[:success] = 'Signed Out'
    redirect_to url_after_destroy
  end
end
