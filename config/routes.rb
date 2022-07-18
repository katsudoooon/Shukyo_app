Rails.application.routes.draw do
  get 'customers/show'
  devise_for :customers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  get 'about', to: 'homes#about'
  resources :articles do
    resources :post_comments, only: [:index, :create, :destroy]
    resources :article_contents, only: [:create, :destroy]
  end
  resources :customers
  
end
