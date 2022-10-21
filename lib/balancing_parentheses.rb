require_relative './stack'

def balancing_parentheses(str)
  stack = Stack.new
  pa = str.chars
  pa.each{ |p| stack.push(p) }
  op = pa.select{ |p| p == "(" }.length
  cl = pa.select{ |p| p == ")" }.length
  dif = (op - cl).abs
  if dif == 0
    if stack.peek == "(" && pa.first == ")"
      dif += 2
    elsif stack.peek == "(" || pa.first == ")"
      dif += 1
    else
      dif
    end
  end
  dif
end
