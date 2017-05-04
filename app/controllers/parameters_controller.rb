class ParametersController < ApplicationController
  def game_items
    @name = params["my_name"].upcase
    @nickname = params["nickname"]
    
    if @name.first.upcase == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end  
  end

  def guess
    @user_guess = params["submission"].to_i
    winning_number = 36
    if winning_number < @user_guess
      @answer_message = "too high"
    elsif winning_number > @user_guess
      @answer_message = "too low"
    else
      @answer_message = "right on the money"
    end
  end

  def url_segment
    @message = params["this_is_a_key"]
  end

  def url_segment_guess
    @user_guess = params["this_is_another_key"].to_i
    winning_number = 36
    if winning_number < @user_guess
      @answer_message = "too high"
    elsif winning_number > @user_guess
      @answer_message = "too low"
    else
      @answer_message = "right on the money"
    end    


  end
end
