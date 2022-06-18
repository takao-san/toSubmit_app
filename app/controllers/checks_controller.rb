class ChecksController < ApplicationController
  
  def top
  end
  
  def index
    @checks = Check.all
  end
  
  def new
    @check = Check.new
  end
  
  def create
    @check = Check.create(check_params)
    if @check.save
      redirect_to index_path
      flash[:success] = "記録を作成しました"
    else
      flash[:danger] = @check.errors.full_messages
      render "new", status: :unprocessable_entity
    end
  end  
  
  def edit
    @check = Check.find(params[:id])
    flash[:success] = "記録を編集しました"
  end
  
  def update
    @check = Check.find(params[:id])
    @check.update(check_params)
    redirect_to index_path
  end
  
  def destroy
    @check = Check.find(params[:id])
    @check.destroy
    redirect_to index_path
  end
  
  private 
    def check_params
      params.require(:check).permit(:product, :like, :text)
    end
end
