def hello(names)
  names.each do |name|
    puts "hello ,#{name.upcase}" #  #{}执行代码
  end
end
rubies = ['MRI','Jruby','rubyinius'] #

hello(rubies)

# 戻り値
def add(a,b)
  a + b
end
add(0,1)

# ローカル変数
greeting = 'hello,'
people = ['alice','bob']
people.each do |name|
  puts greeting + name
end

# グローバル変数: $から
$undefined

# 定数
FOO_BAR = 'bar'

# 条件　nilと false以外の全ての値は真になる
# 式　if最後に評価された値を返します
if true
  puts 'hey' #puts return nil
  'hey'      #return 'hey'
end

# クラス：オブジェクトの振る舞い　つまり　行為
class MyClass
  def hello
    puts 'hello'
  end
end

my_object = MyClass.new
my_object.hello    #nil

# インスタンス変数:  实例变量：实例变量可以跨任何特定的实例或对象中的方法使用。
# 实例变量在变量名之前放置符号（@）。往往不在方法中，生成对象才分配空间
# 类变量：类变量可以跨不同的对象使用。类变量属于类，且是类的一个属性。类变量在变量名之前放置符号（@@）。
class Ruler
  def length=(val)
    @length = val
  end
  def length
    @length
  end
end

ruler = Ruler.new
ruler.length = 30
ruler.length


# 自動的な書き方
# self
class Ruler1
  attr_accessor :length
  def set_length
    self.length = 30
  end

  def initialize(length)
    @length = length
  end

  def pair
    puts Ruler1.new(20).length
    puts Ruler1.new(10).length
  end
end


ruler1 = Ruler1.new(40)
puts ruler1.length
ruler1.set_length
puts ruler1.length
ruler1.pair

#継承　スーパークラス　サブクラス 写与父类相同名称的方法时，用super继承 然后写别的。
class Superclass
  def hello
    puts 'hello'
  end
end
class Subclass < Superclass
  def hey
  puts 'hey'
  end

  def hello
    super   #先输出hello再输出hey
    puts 'same name'
  end
end

sub = Subclass.new
sub.hello
sub.hey

#Hash
program = {:ruby=>2021, :java=>2020, :C=>2015}
puts program[:ruby]
program[:C2] = "it's test"
program[:C2] << ", it's test2"
puts program

#継承
class Parent
  def hellow
    puts "I`m parent"
  end
end

class Child < Parent
  def hey
    puts "I`m child"
  end
end

child = Child.new
child.hey
child.hellow
#不定义父类的话 就是object
#module
puts "##module"
#instance化できないクラスのようなもの
module Human
  class Head
    puts "head"
  end
  class Foot
    puts
  end
end

Human::Head.new
#正規表現
#对特定字符串进行操作
parttern = /[0-9]+/
parttern === 'HAL 9000'
#手続きプロジェクト
test = Proc.new{|name|
               name = 'hey test'
               puts name }
test.call
