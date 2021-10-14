Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/get_name" => "names#get_name"
  get "/numbers_game/:guessed_number" => "numbers#guess_number"
  get "sum_numbers/:first_number/:second_number" => "numbers#get_sum"
end
