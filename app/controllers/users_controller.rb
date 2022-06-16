class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "ユーザー登録ができました"
      redirect_to user_path(@user)
    else
      render "users/new", status: :unprocessable_entity
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "ユーザー情報を編集しました"
      redirect_to user_path
    else
      render "users/edit", status: :unprocessable_entity      
    end
  end
  
  def destory
  end
  
  private 
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :image)
    end

end
