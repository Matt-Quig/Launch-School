def prompt(message)
  puts "=> #{message}"
end

prompt('welcome to your mortgage calculator')

prompt('What is the amount of your loan?')

loan = gets.chomp.to_f

prompt('What is the duration of your loan in months?')

months = gets.chomp.to_i

prompt('What is the Annual Percentage Rate or APR of your loan')

monthly_interest = gets.chomp.to_f / months

interest = monthly_interest / 100

payment = loan * (interest / (1 - (1 + interest)**(-months)))

prompt("Your monthly payment is #{payment}")
