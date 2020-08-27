Rails.application.routes.draw do
  root to: 'home#top'
  devise_for :users
  resource :user, expect: [:new, :create, :destroy]
  #　一覧画面を表示したいのでresourcesとする
  resources :recipes do
    resource :favorites, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
