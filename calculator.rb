puts "Welcome to the Calculator!"
puts "Please calculate  . i.e '4+3*4'"

input = gets.chomp

#checks to see if string contains parenthesis
#if true outputs string within parenthesis
#if false outputs full string
def parenCheck(x)
  if (x.include? "(" && ")")
   x.slice( /(?<=\()(.*)(?=\))/ )
  else
   x
  end
 end

#receives a string and creates an array of symbols and numbers
def splitter(x)
  x.split(%r{(\+|\-|\/|\*)}).map do |x|
    unless x =~ /(\+|\-|\/|\*)/ then x.to_i else x.to_sym end
  end
end

#calculates arguments on either side of the first symbol
#removes the calculated values and replaces with result
def calculate (x)
    while x.length >= 2
      #recv, meth, arg = cal
      result = x[0].public_send(x[1], x[2])
      x.shift(3)
      x.unshift(result)

    end
   result
end

checked = parenCheck(input)
split = splitter(checked)

p calculate(split)
