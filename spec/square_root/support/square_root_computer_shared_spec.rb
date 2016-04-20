shared_examples 'SquareRootComputer' do
  let(:computer) { described_class.new }

  describe 'compute?' do
    context 'input is greater than one' do
      it 'computes square root of 2' do
        expect(computer.get_root(2, 0.1)).to be_within(0.1).of(1.4)
        expect(computer.get_root(2, 0.00001)).to be_within(0.00001).of(1.41421)
      end
    end

    context 'input is between zero and one' do

    end

    context 'input is negative' do

    end

    context 'input is zero' do

    end

    context 'input is one' do

    end

    context 'precision is zero' do

    end

    context 'precision is negative' do

    end
  end
end
