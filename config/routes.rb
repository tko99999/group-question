Rails.application.routes.draw do
  root 'index#index' #この行を追加
  devise_for :users,
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  controllers: {
    sessions: 'users/sessions',
    registrations: "users/registrations",
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

end
