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
      it 'computes square root of 0.5' do
        expect(computer.get_root(0.5, 0.1)).to be_within(0.1).of(0.7)
        expect(computer.get_root(0.5, 0.00001)).to be_within(0.00001).of(0.70711)
      end
    end

    context 'input is negative' do
      it 'throws an exception' do
        expect { computer.get_root(-2, 0.1) }.to raise_error(ArgumentError)
      end
    end

    context 'input is zero' do
      it 'computes square root' do
        expect(computer.get_root(0, 0.00001)).to be_within(0.00001).of(0)
      end
    end

    context 'input is one' do
      it 'computes square root' do
        expect(computer.get_root(1, 0.00001)).to be_within(0.00001).of(1)
      end
    end

    context 'precision is zero' do
      it 'throws an exception' do
        expect { computer.get_root(2, 0) }.to raise_error(ArgumentError)
      end
    end

    context 'precision is negative' do
      it 'throws an exception' do
        expect { computer.get_root(2, -0.1) }.to raise_error(ArgumentError)
      end
    end
  end
end
