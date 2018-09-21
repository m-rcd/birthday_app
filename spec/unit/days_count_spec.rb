require 'days_count'

describe Counter do
  subject(:counter) { described_class.new }
  describe '#count' do
    context 'when current year is not a leap year' do
      it 'returns how many days left until birthday' do
        allow(Date).to receive(:today).and_return(Date.parse("19/09/2018"))
        expect(counter.count('23', 'march')).to eq 185
      end
    end

    context 'when current year is a  leap year' do
      it 'returns how many days left until birthday' do
        allow(Date).to receive(:today).and_return(Date.parse("29/02/2020"))
        expect(counter.count('22', 'february')).to eq 360
       end
    end

    context 'when their birthday is the 29th of February' do
      it 'returns how many days left until birthday' do
        allow(Date).to receive(:today).and_return(Date.parse("01/03/2020"))
        expect(counter.count('29', 'february')).to eq 1461
      end
    end
  end
end
