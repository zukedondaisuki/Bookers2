Rails.application.routes.draw do
  get 'chats/show'
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users, controllers: {
  registrations: "users/registrations"
  }

  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show, :edit, :update]

  get "search" => "search#search"

  resources :users do
    member do
      get :followings, :followers
    end
  end

  post 'follow/:id' => 'relationships#create', as: 'follow' # フォローする
  delete 'unfollow/:id' => 'relationships#destroy', as: 'unfollow' # フォロー外す


  get 'chats/:id', to: 'chats#show', as: 'chat'
  resources :chats, only: [:create]

end
