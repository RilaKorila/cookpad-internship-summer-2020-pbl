class FavoritesController < ApplicationController
    def create
        # current_user.favorites.create : current_userに結びついたいいねを取得 
        # →　あとは、どのレシピにいいねをしたか記録
        @favorite = current_user.favorites.create(recipe_id: params[:recipe_id])
        # いいねしたあと前のページに戻る
        redirect_back(fallback_location: root_path)
    end

    def destroy
        @recipe = Recipe.find(params[:recipe_id])
        # 下のrecipe_idには上でfind下recipe_idがはいる
        @favorite = current_user.favorites.find_by(recipe_id: @recipe.id)
        @favorite.destroy
        # 万が一元いたurlがわからなかったらroot_pathへ
        redirect_back(fallback_location: root_path)
    end

end
