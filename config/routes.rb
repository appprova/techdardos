Techdardos::Application.routes.draw do
  devise_for :users
  resources :games

end
