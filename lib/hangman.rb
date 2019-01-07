require_relative 'try_again'
require 'pry'

class Hangman

    

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