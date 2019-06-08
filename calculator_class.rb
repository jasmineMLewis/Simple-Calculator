#Create a program that will take two numbers and then gives the user a choice of what kind of arithmetic 
#they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. 

class Calculator
    OPTIONS = ['add', 'subtract', 'multiply', 'divide']

    def initialize
        welcome()
        display_arithmetic_choices()
        enter_numbers()
    end

    def add
        sum = @first_number + @second_number
        puts sum
    end
    
    def calculate
        case @option
        when "add"
         add()
        when "subtract"
          subtract()
        when "divide"
          divide() 
        when "multiply"
          multiply()
        end
    end

    def display_arithmetic_choices
        puts "Select which arithmetic you would like: "
        OPTIONS.each do |option|
            puts option
        end
       @option = gets.chomp.downcase.strip
    end

    def divide 
        quotient = @first_number / @second_number
        puts quotient
     end
    
    def enter_numbers
        puts "Enter the first number"
        @first_number = gets.chomp.to_i
        puts "Enter the second number"
        @second_number = gets.chomp.to_i
    end

    def multiply
        product = @first_number * @second_number
        puts product
    end

    def subtract 
        difference = @first_number - @second_number
        puts difference
    end

    def welcome
        puts "Calculator Program"
        puts "1) Select what kind of arithemtic you would like to perform"
        puts "2) Then enter two numbers"
    end
end

clc = Calculator.new()
clc.calculate