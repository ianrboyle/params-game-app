Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "get_name" => "names#get_name"
  get "numbers_game" => "numbers#guess_number"
end
