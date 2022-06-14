class ChecksController < ApplicationController
  
  def top
  end
  
  def index
    @checks = Check.all
  end
  
  def new
    @check = Check.new(check_params)
  end
  
  def create
    @check = Check.create(check_params)
    if @check.save
      flash[:success] = "好き嫌いが登録できました"
      redirect_to index_path
    else
      flash[:danger] = "好き嫌いが登録できませんでした"
      render "new"
    end
  end  
  
  def edit
    @check = Check.find(params[:id])
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
      params.permit(:product, :like, :text)
    end
end
