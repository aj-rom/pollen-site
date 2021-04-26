class UsersController < ApplicationController
  before_action :new_user, only: %i[new create]
  before_action :get_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show; end

  def edit
    redirect_to @user unless is_owner(@user)
  end

  def update
    @user.update(user_params)

    if @user.valid?
      @user.save
      flash[:notice] = 'Successfully updated your account.'
    else
      render :'users/edit'
    end
  end

  def new
    redirect_to root_path if user_signed_in?
  end

  def create
    @user = User.create(user_params)

    if @user.valid?
      @user.save
      sign_in @user
      redirect_to @user
    else
      render :'users/new'
    end
  end

  def destroy
    @user.destroy! if is_owner(@user.id)
    redirect_to new_session_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def new_user
    @user = User.new
  end

  def get_user
    @user = User.find_by(id: params[:id])
  end
end
