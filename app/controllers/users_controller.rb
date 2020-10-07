class UsersController < ApplicationController
before_action :authenticate_user!, only: [:show, :edit]

#マイページの表示
  def show
    @user = User.find(params[:id])
  end
#マイページの編集画面表示
  def edit
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(@user)
    end
  end
#マイページの編集
  def update 
    @user = User.find(params[:id])
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
    current_user.destroy
    reset_session
    redirect_to root_path, info: 'ありがとうございました。またのご利用を心よりお待ちしております。'

  end

private
  def user_params
    params.require(:user).permit(:name, :email, :postcode, :address, :phone_number)
  end

end
