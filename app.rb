require_relative 'lib/hangman' 
require_relative 'lib/try_again'

game = Hangman.new
 
    puts "Guess the Word"
    word = gets.to_str
    puts game.TryToGuess(word)


    