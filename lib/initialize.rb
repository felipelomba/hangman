require 'tty-cursor'
require 'tty-spinner'

class Initial

    def self.initializing
        system('clear')

        cursor = TTY::Cursor
        print cursor.move_to(60,15)
        spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :pulse_2)
        spinner.auto_spin # Automatic animation with default interval
        sleep(10) # Perform task
        spinner.stop('Done!') # Stop animation

        system('clear')
        print cursor.move_to(60,15)
        print "Welcome to Hangman Challenge!"
        puts " "
        File.open(File.expand_path('../../ascii/hang.txt',__FILE__),'r') do |arq|
            while line = arq.gets
            puts line
            end                  
    sleep(5)
end
end
end     


