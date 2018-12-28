require_relative 'initialize'
require_relative 'sort_word'

class Hangman

    attr_reader :word
    attr_reader :won

    def initialize
        Initial.initializing
        @word = SortWord.sort
        @won = false
    end

    def TryToGuess(word = "0")
        if word == @word
            @won = true
            return "You Win!"
        else
            #return "Too bad! This is not right!"
            File.open(File.expand_path('../../ascii/hang.txt',__FILE__),'r') do |arq|
                while line = arq.gets
                    puts line
                end                      
            end
        end
    end
end