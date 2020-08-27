class FoodsController < ApplicationController
  def index
    @foods = Food.all
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

  private 
  def food_params
    params.require(:food).permit(:food_name)
  end
end
