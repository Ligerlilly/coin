require 'rspec'
require 'coin'

describe 'coin' do
  it 'takes and argument then returns numbers of quarters' do
    expect(coin(100)).to eq({q: 4, d: 0, n: 0, p: 0})
  end
  it 'takes and argument then returns numbers of quarters and dimes' do
    expect(coin(120)).to eq({q: 4, d: 2, n: 0, p: 0})
  end
  it 'takes and argument then returns numbers of quarters, dimes, and nickles' do
    expect(coin(155)).to eq({q: 6, d: 0, n: 1, p: 0})
  end
  it 'takes and argument then returns numbers of quarters, dimes, nickles, and pennies' do
    expect(coin(159)).to eq({q: 6, d: 0, n: 1, p: 4}) 
  end

end
