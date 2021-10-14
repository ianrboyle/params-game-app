class NumbersController < ApplicationController
  def guess_number 
    input_value = params["number"]
    computer_num = 36

    if input_value.to_i == computer_num
      render json: {message: "You guessed the right number!"}
    elsif input_value.to_i > computer_num
      render json: {message: "Too high!"}
    end

  end
end
