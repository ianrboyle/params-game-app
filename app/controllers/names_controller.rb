class NamesController < ApplicationController
  def get_name
    input_value = params["your_name"]
    input_value = input_value.downcase
    if input_value.chars.first == "a"
      render json: {message: "Your name starts with 'a'!"}
    else
      render json: {message: "Your name does not start with 'a'!"}
    end
  end

end
