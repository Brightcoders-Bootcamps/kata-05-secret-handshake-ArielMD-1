require_relative 'handshake'
require_relative 'comands'

handshake = HandShake.new
result = handshake.send(23)
puts(result)
