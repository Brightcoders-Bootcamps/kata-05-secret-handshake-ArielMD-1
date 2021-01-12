require_relative '../src/comands'

describe Comands do
  before(:each) do
    @response = []
    @comands = Comands.new
  end

  describe 'wink' do
    it 'describes when the num is 00001' do
      @comands.wink(@response)
      expect(@response).to eql(['wink'])
    end
  end

  describe 'doble_blink' do
    it 'describe when the num is 00010' do
      @comands.double_blink(@response)
      expect(@response).to eql(['doble blink'])
    end
  end

  describe 'close_your_eyes' do
    it 'describe when the num is 00100' do
      @comands.close_your_eyes(@response)
      expect(@response).to eql(['close your eyes'])
    end
  end

  describe 'jump' do
    it 'describe when the num is 01000' do
      @comands.jump(@response)
      expect(@response).to eql(['jump'])
    end
  end

  describe 'reverse' do
    it 'describes when the num is 10000' do
      @response << 'blink'
      @response << 'doble blink'
      @comands.reverse(@response)
      expect(@response).to eql(['doble blink', 'blink'])
    end
  end
end
