class TastesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    # Tastesの全てのレコードを参照
    @tastes = Taste.all
  end

  def show
    @taste = Taste.find(params[:id])
#    @foods = 
  end

  def new
    @taste = Taste.new
  end

  def create
    @taste = Taste.new(taste_params)

    if @taste.save
      redirect_to taste_path(@taste), notice: "投稿に成功しました。"
    else
      render :new
    end
  end

  def edit
  end

  private 
  def taste_params
    params.require(:taste).permit(:title, :body)
  end

end
