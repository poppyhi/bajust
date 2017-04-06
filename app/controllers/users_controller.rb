class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:edit]
  before_action :set_user, only: [:show, :edit]

  def show
  end

  def edit
  end


  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email)
    end

    def correct_user
      user = User.find(params[:id])
      if !current_user?(user)
        redirect_to root_path, alert: '許可されていないページです'
      end
    end

end
