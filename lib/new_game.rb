require_relative 'hangman'
require_relative 'initialize'
require_relative 'sort_word'

class NewGame

    attr_reader :word
    attr_reader :won

    def initialize
        Initial.initializing
        @word = SortWord.sort
        @won = false
        puts @word.join('')
    end

    def starting_game
        puts "Guess the Word"
        word = gets.to_str
        puts game.TryToGuess(word)
    end