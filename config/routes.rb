Techdardos::Application.routes.draw do
  devise_for :users
  
  resources :games

  get "user_autocomplete" => "user_autocomplete#autocomplete"

end
