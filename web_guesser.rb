require 'sinatra'
require 'sinatra/reloader'

random_number = rand(100)

get '/' do
    guess = params["guess"].to_i
    message = check_guess(guess, random_number)

    erb :index, :locals => { :number => random_number, :msg => message }  
    
end

def check_guess(guess, random_number)
    if guess < random_number
        "Your Guess is Too LOW!"
      elsif guess > random_number
        "Your Guess is Too HIGH!"
      else
        "Conguratulations! You guessed it right:)"
      end
end