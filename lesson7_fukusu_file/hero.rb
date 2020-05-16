require './character'

class Hero < Character
    @@type = '主人公'
    
    attr_accessor :suffix
    
    def initialize(suffix)
        super(1000, 3)
        self.suffix = suffix
    end
    
    def name
        @@type + self.suffix　#主人公が代入される
    end
    
    def self.description
        puts @@type + 'は、この世界を守る勇者だ！'
    end    
end# Class hero end