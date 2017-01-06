Rails.application.routes.draw do

  devise_for :users

  resources :articles do
    resources :comments
  end

  authenticated :user do
   root 'welcome#index', as: :authenticated_root
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end

end
