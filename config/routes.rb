Rails.application.routes.draw do
  resources :boards
  #ログイン画面
  root to: 'boards#index'
  devise_for :users
  # , controllers: {
  #   sessions: 'users/sessions',
  #   registrations: 'users/registrations',
  #   passwords: 'users/passwords',
  #   confirmations: 'users/confirmations'
  # }
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # devise_scope :user do
  #   get "sign_in", :to => "users/sessions#new"
  #   get "sign_out", :to => "users/sessions#destroy"
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
