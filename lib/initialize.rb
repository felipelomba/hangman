require 'tty-cursor'
require 'tty-spinner'

class Initial

    def self.initializing #initializing method
        system('clear')
        spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :pulse_2)
        spinner.auto_spin # Automatic animation with default interval
        sleep(10) # Perform task
        spinner.stop('Done!') # Stop animation
        system('clear')
        File.open(File.expand_path('../../ascii/title.txt',__FILE__),'r') do |arq|
            while line = arq.gets
                puts line
            end
        sleep(5)
        end
    end
end   


