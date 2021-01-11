class Comands
  attr_reader :operations

  def initialize
    @operations = {
      0 => method(:wink),
      1 => method(:double_blink),
      2 => method(:close_your_eyes),
      3 => method(:jump),
      4 => method(:reverse)
    }
  end

  def wink(list)
    list << 'wink'
  end

  def double_blink(list)
    list << 'doble blink'
  end

  def close_your_eyes(list)
    list << 'close your eyes'
  end

  def jump(list)
    list << 'jump'
  end

  def reverse(list)
    temp = list.reverse.dup
    list.clear
    list << temp
  end
end
