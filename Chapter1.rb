#所有都是object
p 'hellow'.class  #String
p String.ancestors #継承関係
p 10.class
p Fixnum.ancestors
p true.class
p TrueClass.ancestors
p nil .class
p NilClass.ancestors
p Object.class
p Class.ancestors    # object -> kernel -> BasicObject

# irb 命令使用  返回类型 其中 puts返回nil，p返回本身
class Sample
  def say
    puts 'hw'
  end
end    # :say
sample = Sample.new #<Sample:0x00007fbdb815b3f0>


##

headers = ["ID","Mathematics","Science,English","Japanese","History,Geography"]
rows = [["ruby","web_application"], ["python", "AI"], ["java", "business_application"]]
table=CSV.open("testin.csv", "w") do |test|
  test<<headers
  rows.each do |row|
    test<<row
  end
end