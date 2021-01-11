require_relative '../src/handshake'

describe HandShake do
  before(:each) do
    @handshake = HandShake.new
  end

  describe 'send' do
    it 'describe when is a valid number' do
      result = @handshake.send(3)
      expect(result).to eql(['wink', 'doble blink'])
    end

    it 'describe when is a invalid number' do
      result = @handshake.send(-1)
      expect(result).to eql('invalid number')
    end
  end
end
