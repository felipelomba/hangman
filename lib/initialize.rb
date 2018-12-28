require 'tty-cursor'
require 'tty-spinner'

class Initial

    def self.initializing
        system('clear')
        spinner = TTY::Spinner.new("[:spinner] Loading ...", format: :pulse_2)
        spinner.auto_spin # Animação automática
        sleep(10)
        spinner.stop('Done!') # Para a animação
        system('clear')
        File.open(File.expand_path('../../ascii/title.txt',__FILE__),'r') do |arq| 
            while line = arq.gets
                puts line # imprime a arte ASCII na tela
            end
        sleep(5)
        end
    end
end   