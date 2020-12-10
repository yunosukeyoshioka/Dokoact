class UsersController < ApplicationController
before_action :authenticate_user!
before_action :set_user, only: [:show, :edit, :update]
before_action :set_guset_user, only: [:show, :edit, :update]
before_action :current_user_check, only: [:show, :edit, :update]
before_action :guest_user_check, only: [:edit, :update]
#マイページの表示
  def show
  end
#マイページの編集画面表示
  def edit
  end
#マイページの編集
  def update
    if @user.update(user_params)
      redirect_to user_path, notice: "会員情報を変更しました"
    else
      flash[:danger] = 'お客様の情報を更新出来ませんでした。空欄の箇所はありませんか？'
      render :edit
    end
  end
#退会画面の表示
  def unscribe
  end
#退会処理
  def withdraw
    current_user.update(is_valid: true)
    current_user.properties.destroy_all
    current_user.destroy
    reset_session
    redirect_to root_path, info: 'ありがとうございました。またのご利用を心よりお待ちしております。'
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :postcode, :address, :phone_number)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_guset_user
    @guest_user = User.find_by(email: 'yunosuke@samplesample')
  end

  def current_user_check
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end
  
  def guest_user_check
    if @guest_user == current_user
      redirect_to user_path(current_user)
    end
  end


end
