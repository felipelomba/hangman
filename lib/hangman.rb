require_relative 'initialize'
require_relative 'sort_word'

class Hangman

    attr_reader :word
    attr_reader :won

    def initialize
        Initial.initializing
        @word = SortWord.sort #Random.rand(1..10)
        @won = false
    end

    def TryToGuess(word = "0")
        if word == @word
            @won = true
            return "You Win!"
        else
            return "Too bad! This is not right!"       
    end
end
end