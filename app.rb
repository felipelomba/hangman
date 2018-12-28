require_relative 'lib/hangman' 

game = Hangman.new
 
    puts "Guess the Word"
    word = gets.to_str
    puts game.TryToGuess(word)
