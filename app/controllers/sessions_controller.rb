class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    # ユーザーがDBに存在し、パスワード認証に成功した場合のみ
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "ログインできました"
      redirect_to user
    else
      flash.now[:danger] = 'メールアドレスまたはパスワードが正しくありません'
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    log_out
    flash[:success] = "ログアウトできました"
    redirect_to root_path, status: :see_other
  end

end
