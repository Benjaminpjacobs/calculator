class Calculator
  attr_accessor :total

  def initialize
    @total = 0
  end

  def update_total(number, operation)
    case operation
    when "add_two"
      @total = number
    when "clear"
      @total = number
    when "subtract_two"
      @total = number
    when "add"
      @total += number
    when "subtract"
      @total -= number
    end
  end

  def add(num1, *num2)
    if !num2.empty?
      sub_total = num1 + num2.join.to_i
      update_total(sub_total, "add_two")
    else
      update_total(num1, "add")
    end
  end 
  
  def clear
    update_total(0,"clear")
  end

  def subtract(num1, *num2)
    if !num2.empty?
      sub_total = num1 - num2.join.to_i
      update_total(sub_total, "subtract_two")
    else
      update_total(num1, "subtract")
    end
  end
end