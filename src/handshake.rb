require_relative 'comands'

class HandShake
  def initialize
    @comands = Comands.new
  end

  def send(num)
    num_is_valid = 0 <= num && num <= 32
    results = num_is_valid ? secret(num) : 'invalid number'
  end

  def secret(num)
    results = []
    num.to_s(2).chars.reverse.each_with_index do |character, index|
      @comands.operations[index].call(results) if character == '1'
    end
    results
  end
end
