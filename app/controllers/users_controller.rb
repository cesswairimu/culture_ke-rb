class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user =  User.new(user_params)
    if @user.save!
      flash["notice"] = "User has been created"
      render "show"
    else
      render "new"
      flash["alert"] = "There was an error on signup"
    end
  end

  def index
  end

  def edit
  end

  def update
  end

  def show
    @User = User.find_by_id params[:id]
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :l_name, :f_name, :encrypted_password)
  end
end
