class RecipesController < ApplicationController
  # before user登録 のactionを制限する(ただし、indexページは誰でも見れるように規制の対象外)
  before_action :authenticate_user!, except: [:index]
  def index
    # Recipesの全てのレコードを参照
    @recipes = Recipe.all
  end

  def show
    @recipe =  Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id

    if @recipe.save
      redirect_to recipe_path(@recipe), notice: "投稿に成功しました。"
    else
      render :new
    end
  end

  def edit
  end

  private 
  def recipe_params
    params.require(:recipe).permit(:title, :body)
  end
end
