class Character #クラスをつくる
   attr_accessor :hp, :power #インスタンス変数

    def initialize(hp, power) #defind 初期化
        self.hp = hp
        self.power = power #変数定義
    end
    
    def name #呼び出されないのに書く意味は？継承するから？
        ''
    end
    
    def attack(character) #attack メソッドに（引数）を渡す
        character.hp -= self.power #character.hp - @power
        puts "#{self.name}が#{character.name}を攻撃して#{self.power}ポイントのダメージを与えた!"
        
        if character.hp <= 0 #もしhpが０以下であれば
            self.defeat(character)#敗北（引数）
        else character.hp >= 0 #もしhpが0以上であれば
            self.hangeki(character)
        end
    end
    
    def defeat(character)#敗北（引数）
        puts "#{self.name}は#{character.name}を倒した！"
    end
    
    def hangeki(characeter)
        puts "#{self.name}は#{character.name}に反撃した！"
    end
end # Class end