#Create a program that will take two numbers and then gives the user a choice of what kind of arithmetic 
#they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. 


OPTIONS = ['add', 'subtract', 'multiply', 'divide']
    
def add(first_number, second_number) 
    sum = first_number + second_number
    puts sum
end

def display_arithmetic_choices
  puts "Select which arithmetic you would like: "
  OPTIONS.each do |option|
      puts option
  end
  gets.chomp.downcase.strip
end

def calculator(choice, first_number, second_number)
    case 
    when "add"
     add(first_number, second_number)
    when "subtract"
      subtract(first_number, second_number)
    when "divide"
      divide(first_number, second_number) 
    when "multiply"
      multiply(first_number, second_number)
    end
end

def divide(first_number, second_number) 
   quotient = first_number / second_number
   puts quotient
end

def enter_number
    puts "Enter a number"
    gets.chomp.to_i
end

def multiply(first_number, second_number)
   product = first_number * second_number
   puts product
end

def subtract(first_number, second_number) 
    difference = first_number - second_number
    puts difference
end

def welcome
    puts "Calculator Program"
    puts "1) Select what kind of arithemtic you would like to perform"
    puts "2) Then enter two numbers"
end

welcome()
choice = display_arithmetic_choices()
first_number = enter_number()
second_number = enter_number()
calculator(choice, first_number, second_number)