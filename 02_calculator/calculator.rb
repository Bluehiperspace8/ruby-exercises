def add(num1,num2)
    result = num1 + num2
end

def subtract(num1,num2)
    result = num1 - num2
end

def sum(array)
    sum = 0
    array.each do |number|
        sum += number
    end
    sum
end

def multiply(array)
    product = 1
    array.each do |number|
        product *= number
    end
    product
end

def power(num,pow)
    result = num ** pow
end

def factorial(num)
    if num <= 1
        1
    else
        num * factorial(num - 1)
    end
end