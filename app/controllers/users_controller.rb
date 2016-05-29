class UsersController < Clearance::UsersController

  before_action :check_user, only: [:edit, :update]

   def create
    @user = user_from_params

    if @user.save
      sign_in @user
      flash[:success] = 'Welcome to Nomad :)'
      redirect_back_or url_after_create
    else
      render template: "users/new"
    end
  end

  # public shows a user profile
  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    if @user.update(permit_params)
      redirect_to user_path(@user)
    else
      render template: "users/edit"
    end
  end

  private

  def user_from_params
    email = user_params.delete(:email)
    password = user_params.delete(:password)
    first_name = user_params.delete(:first_name)
    last_name = user_params.delete(:last_name)

    Clearance.configuration.user_model.new(user_params).tap do |user|
      user.email = email
      user.password = password
      user.first_name = first_name
      user.last_name = last_name
    end
  end

  def permit_params
    params.require(:user).permit(:first_name, :last_Name, :bio, :email, :password)
  end
end
