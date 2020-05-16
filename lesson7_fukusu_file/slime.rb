require './character' 

=begin
同じフォルダにあるcaracter.rbを読み込む。
character クラスは class Slime < Characterで使用されているため
読み込んでおく必要がある。
=end

class Slime < Character #スーパークラスのcharacterを継承する。Slimeはcharacterの技を覚える！
    
    @@type = 'スライム'#クラス変数よくわかっていない。
    
    attr_accessor :suffix
    
    def initialize(suffix) # 初期値（引数を設定）
        super(10, 3) 
=begin
super は現在のメソッドがオーバーライドしているメソッドを呼び出します。
括弧と引数が省略された場合には現在のメソッドの引数がそのまま引き渡されます。
引数を渡さずにオーバーライドしたメソッドを呼び出すには super() と括弧を明示します。
=end
        self.suffix = suffix
    end # メソッド initialize
    
    def name
       @@type + self.suffix #initializeのpowerとhpを呼び出す 
    end
    
    def self.description
        puts @@type + 'は、最弱のモンスターだ!'
    end
end # class Slime

