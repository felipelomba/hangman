require_relative 'initialize'
require_relative 'sort_word'
require_relative 'try_again'
require 'pry'

class Hangman

    attr_reader :word
    attr_reader :won

    def initialize
        Initial.initializing
        @word = SortWord.sort
        @won = false
        puts @word.join('')
    end

    def TryToGuess(word = "0")
        if @word.include?(word.chomp)
            @won = true
            return "You Win!"
        else
            #return "Too bad! This is not right!"
            File.open(File.expand_path('../../ascii/hang.txt',__FILE__),'r') do |arq|
                while line = arq.gets
                    puts line
                end                      
            end
            continue = TryAgain.new
            continue.trying
        end
    end
end