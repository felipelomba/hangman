 class TryAgain

    attr_accessor :button

    def trying
        puts 'Wanna try again?'
        button = gets.to_str
        if button == "s"
            system('ruby app.rb')
        else
            return 'See you again!'
        end
    end
end