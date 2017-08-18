puts "What is your first number?"
@firstnum = gets.chomp.to_f

puts "what is your second number?"
@secondnum = gets.chomp.to_f

puts "Type add, subtract, multiply or divide to choose what to do."
@answer = gets.chomp.downcase

def calculate_answer
		if @answer == "add"
				sum = @firstnum + @secondnum
				puts "The answer is #{sum}."
		elsif @answer == "subtract"
				sum = @firstnum - @secondnum
				puts "The answer is #{sum}."
		elsif @answer == "multiply"
				sum = @firstnum * @secondnum
				puts "The answer is #{sum}."
		elsif @answer == "divide"
				sum = @firstnum / @secondnum
				puts "The answer is #{sum}."
				# puts "The answer is #{calculate_answer}"
		else
				puts "Please try again. Type add, subtract, multiply or divide to choose what to do."
				loop do
						@answer = gets.chomp.downcase
						calculate_answer
						break
				end
		end
end

calculate_answer
