require 'days_count'

describe Counter do
  subject(:counter) { described_class.new }
  context '#count' do
    it 'returns how many days left until birthday' do
      allow(Date).to receive(:today).and_return(Date.parse("19/09/2018"))
      expect(counter.count('23', 'march')).to eq 185
    end
  end

  context '#leap_year?' do
    it 'returns true if leap year' do
      allow(Date).to receive(:today).and_return(Date.parse("29/02/2020"))
      expect(counter.leap_year?).to eq true
    end

    it 'returns false if not leap year' do
      allow(Date).to receive(:today).and_return(Date.parse("19/09/2018"))
      expect(counter.leap_year?).to eq false
    end
  end
end
