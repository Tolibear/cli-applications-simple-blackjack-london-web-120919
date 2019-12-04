require "pry"

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  total
end

def hit?(total)
  @total = total
  def question_sequence
    prompt_user
    @response = get_user_input
    if @response == "s"
      return @total
    elsif @response == "h"
      new_card = deal_card
      @total += new_card
      return @total
    else
      invalid_command
    end
  end

  question_sequence

  until @response == "h" || "s" do
    question_sequence
  end
  return @total
end


# def hit?(total)
#   def question_sequence
#     prompt_user
#     @response = get_user_input
#   end
#   question_sequence
#   while @response != "h" || "s" do
#     invalid_command
#     question_sequence
#   end
#
#   if @response == "s"
#     return total
#   else
#     new_card = deal_card
#     total += new_card
#     return total
#   end
# end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
