
class ComplexNumber

  attr_reader :real, :imaginary

  def initialize(real,imaginary)
    @real = real
    @imaginary = imaginary
  end

  def +(cn1)
    ComplexNumber.new(self.real+cn1.real, self.imaginary+cn1.imaginary)
  end

  def *(cn1)
    ComplexNumber.new(self.real * cn1.real - self.imaginary * cn1.imaginary, self.imaginary * cn1.real + self.real * cn1.imaginary)
  end

  def bulk_add(cns)
   sum = ComplexNumber.new(0,0)
    if cns.length > 0 then
      cns.each do |item|
        sum += item
      end
    end
    return sum
  end

  def bulk_multiply(cns)
   result = cns[0]
    if cns.length > 0 then
      (1...cns.length).each do |item|
        result *= cns[item]
      end
    end
    return result
  end

end

obj1 = ComplexNumber.new(3,2)
obj2 = ComplexNumber.new(1,7)
obj3 =  ComplexNumber.new(1,2)


# Addition 
obj = obj1 + obj2
puts "Complex + form : #{obj.real } + #{obj.imaginary}i\n\n"

# Subtraction
obj = obj1 * obj2
puts "Complex * form : #{obj.real } + #{obj.imaginary}i\n\n"

obj = [obj1,obj2];

puts "Complex array + form : #{obj1.bulk_add(obj).real } + #{obj1.bulk_add(obj).imaginary}i\n\n"

puts "Complex array * form : #{obj2.bulk_multiply(obj).real } + #{obj2.bulk_multiply(obj).imaginary}i\n\n"
