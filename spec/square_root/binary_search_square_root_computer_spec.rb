describe SquareRoot::BinarySearchSquareRootComputer do
  subject(:computer) { SquareRoot::BinarySearchSquareRootComputer.new }

  it 'computes square root' do
    expect(computer.get_root(2)).to be_within(0.01).of(1.41)
  end
end
