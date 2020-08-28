class UsersController < ApplicationController
  # before user登録 のactionを制限する(ただし、indexページは誰でも見れるように規制の対象外)
  before_action :authenticate_user!
  def show
  end

  def update
    @user = current_user
  end

  def edit
    @user = current_user
    # updateされたらリダイレクト
    if @user.update(user_params)
      redirect_to user_path, notice: "ユーザー情報を更新しました。"
    # されなかったらrender
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
