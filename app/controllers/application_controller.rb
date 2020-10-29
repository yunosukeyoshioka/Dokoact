class ApplicationController < ActionController::Base
  #CSRF保護の無効化
  #protect_from_forgery with: :null_session
	before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :withdraw_customer, only: [:create]
  #Bootstrapのflashメッセージ機能追記
  add_flash_types :success, :danger, :info

	protected
   	#ログイン時のパス
   	def after_sign_in_path_for(resource)
   		root_path		
   	end
    # ログアウト時のパスの変更
    def after_sign_out_path_for(resource)
      root_path
    end

    # 新規登録の保存機能
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :postcode, :address, :phone_number])

      #sign_upの際にnameのデータ操作を許。追加したカラム。
  		devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  	end	
end
