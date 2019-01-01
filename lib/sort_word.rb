class SortWord

    def self.sort #self.sort
        v=[]
        w=[]
        # Aqui temos um arquivo que guarda palavras separados em linhas 
        # O while faz que ele veja linha por linha e guarda em um array (v)
        File.open(File.expand_path('../../words.txt',__FILE__),'r') do |arq|
            while line = arq.gets
                v.push(line.to_str)
            end
        w = v.sample # pega uma palavra randomicamente da váriavel V (array)
        w = w.scan /\w/ # separa os caracteres da palavra e coloca cada um na posição do array
        w        
    end
    end    
end