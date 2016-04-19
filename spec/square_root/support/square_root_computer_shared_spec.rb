shared_examples 'SquareRootComputer' do
  let(:computer) { described_class.new }

  describe 'compute?' do
    it 'computes square root of 2' do
      expect(computer.get_root(2)).to be_within(0.01).of(1.41)
    end
  end
end
