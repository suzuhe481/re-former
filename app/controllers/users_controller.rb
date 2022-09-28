class UsersController < ApplicationController
  def new; end

  def create
    @user = User.new(email: params[:email], username: params[:username], password: params[:password])

    if @user.save
      redirect_to new_user_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
