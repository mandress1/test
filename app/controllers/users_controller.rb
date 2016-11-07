class UsersController < ApplicationController

  def user_params
    params.require(:user).permit(:user_id, :email, :session_token, :favorite_pokemon)
  end

  def index
    @users = User.all
  end
  
  def show
  end
  
  def new
  end
  
  def edit
  end

  def create
    withSess = User::create_user!(user_params) #Adds a session token to the account
    begin
      @user = User.create!(withSess)
      flash[:notice] = "Welcome #{@user.user_id}. Your account has been created"
      redirect_to login_path
    rescue
      flash[:notice] = "Sorry, this user-id is taken. Try again"
      redirect_to new_user_path
    end
  end
  
  def update
  end

  def destroy
  end

end
