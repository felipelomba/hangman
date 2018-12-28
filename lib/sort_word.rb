class SortWord

    def self.sort
        v=[]
        # Aqui temos um arquivo que guarda números separados em linhas 
        # O while faz que ele veja linha por linha e guarda em um array (v)
        File.open(File.expand_path('../../words.txt',__FILE__),'r') do |arq|
            while line = arq.gets
                v.push(line.to_str)
            end
        v.sample #pega um numéro randomicamente da váriavel V (array)
        end
    end    
end