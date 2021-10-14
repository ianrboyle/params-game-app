class NamesController < ApplicationController
  def get_name
    input_value = params["your_name"]
    output_value = input_value.downcase
    if output_value[0] == "a"
      render json: {message: "Your name starts with 'a'!"}
    else
      render json: {message: "Your name does not start with 'a'! It starts with #{output_value[0]}!"}
    end
  end

  def get_creds
    username = params[:username]
    password = params[:password]
    if username == "hugh" && password == "swordfish"
      render json: {message: "Valid Credentials!"}
    else
      render json: {message: "Invalid Credentials!"}
    end
  end

end
