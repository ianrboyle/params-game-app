class NumbersController < ApplicationController
  def guess_number 
    input_value = params["guessed_number"].to_i
    computer_num = 36

    if input_value == computer_num
      output_message = "You guessed the right number!"
    elsif input_value > computer_num
      output_message = "Too high!"
    elsif input_value < computer_num
      output_message = "Too low!"
    end
    render json: {message: output_message}
  end

  def get_sum
    first_input = params["first_number"].to_i
    second_input = params["second_number"].to_i
   
    sum = first_input + second_input
    render json: {message: "#{first_input} + #{second_input} = #{sum}"}
  end
end
