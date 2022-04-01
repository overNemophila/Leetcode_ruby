require 'CSV'


def dropouts(filename)
  student = []
  table =CSV.read("#{filename}", headers: true)
  table.each do |row| #行
    num = 0
    for i in  1..6 do
      if row[i].to_i<=49
        num+=1
      end
      if num>=2
        student<< row[0]
        break
      end
    end
  end
  output=filename.gsub(/in/,"out").strip
  puts output
  CSV.open("#{output}", "w") do |test|
    test<<["ID"]
    student.each do |row|
      test<<[row]
    end
  end
  puts "ID"
  puts student
end


def main(argv)
  function,filename=gets.chomp.split(" ")
  puts filename

    if function.eql?("drouputs")
      dropouts(filename)
    end

end

main(ARGV)
#dropouts("i12345inadfas","write-sample")