class FavoritesController < ApplicationController
    def create
        # current_user.favorites.create : current_userに結びついたいいねを取得 
        # →　あとは、どのレシピにいいねをしたか記録
        @favorite = current_user.favorites.create(food_id: params[:food_id])
        # いいねしたあと前のページに戻る
        redirect_back(fallback_location: root_path)
    end

    def destroy
        @food = Food.find(params[:food_id])
        # 下のrecipe_idには上でfind下recipe_idがはいる
        @favorite = current_user.favorites.find_by(food_id: @food.id)
        @favorite.destroy
        # 万が一元いたurlがわからなかったらroot_pathへ
        redirect_back(fallback_location: root_path)
    end

end
