puts "Welcome to the Calculator!"
    puts "Please calculate  . i.e '4+3*4'"

    #gets user input and creates array for each value
    cal = gets.chomp.split(%r{(\+|\-|\/|\*)}).map do |x|
      unless x =~ /(\+|\-|\/|\*)/ then x.to_i else x.to_sym end
    end

    result = 0
    while cal.length >= 2
      #recv, meth, arg = cal
      result = cal[0].public_send(cal[1], cal[2])
      cal.shift(3)
      cal.unshift(result)

    end

new = result.to_i
print new
print "\n"
true
