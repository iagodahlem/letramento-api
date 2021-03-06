Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: { format: :json } do
    post 'login', to: 'user_token#create'
    resources :texts
    get 'users/texts'
    get 'texts/by_user'
  end
end
