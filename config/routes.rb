Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'users/show'
  get 'users/edit'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  # top画面
  get "/", to: "checks#top", as: "root"
  # インデックス画面
  get "/index", to: "checks#index"
  # 投稿作成
  get "/checks/new", to: "checks#new"
  # 投稿送信
  post "/checks", to: "checks#create"
  # 投稿編集
  get "/checks/:id/edit", to: "checks#edit"
  patch "/checks/:id", to: "checks#update"
  # 投稿削除
  delete "/checks/:id", to: "checks#destroy"

  # ログイン ログアウト
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  # user
  get "/signup", to: "users#new"
  resources :users
end
