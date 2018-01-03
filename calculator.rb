puts "Welcome to the Calculator!"
    puts "Please calculate  . i.e '4 + 3 * 4'"

    #gets user input and creates array for each value
    cal = gets.chomp.split(" ")

    #creates a new array and converts string to integer or symbol
    cal.map!.with_index do |num, i|
      if i.even?
        num.to_i
      else
        num.to_sym
      end

    end

result = 0
while cal.length >= 2
  #recv, meth, arg = cal
  result = cal[0].public_send(cal[1], cal[2])
  cal.shift(3)
  cal.unshift(result)

end
