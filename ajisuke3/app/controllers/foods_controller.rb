class FoodsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    #@foods = Food.all
    @foods = Food.search(params[:search])
  end

  

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)

    if @food.save
      redirect_to food_path(@food), notice: "投稿に成功しました。"
    else
      render :new
    end
  end

  def edit
  end

  def search
    if params[:name].present?
      @food = Food.where('food_name LIKE ?', "%#{params[:name]}%")
    else
      @food = Food.none
    end
  end

  private 
  def food_params
    params.require(:food).permit(:food_name)
  end
end
