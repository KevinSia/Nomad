class UsersController < Clearance::UsersController

   def create
    @user = user_from_params

    if @user.save
      sign_in @user
      flash[:success] = 'Welcome :)'
      redirect_back_or url_after_create
    else
      render template: "users/new"
    end
  end

  private

  def user_from_params
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    first_name = user_params.delete(:first_name)
    last_name = user_params.delete(:last_name)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = emaildef destroy
    sign_out
    redirect_to url_after_destroy
  end
      user.password = password
      user.first_name = first_name
      user.last_name = last_name
    end
  end

end
