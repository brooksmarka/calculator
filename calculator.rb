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
   cal.inspect
