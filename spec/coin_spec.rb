require 'rspec'
require 'coin'

describe 'coin' do
  it 'takes and argument then returns numbers of quarters' do
    expect(coin(100)).to eq({q: 4, d: 0, n: 0, p: 0})
  end
  it 'takes and argument then returns numbers of quarters and dimes' do
    expect(coin(120)).to eq({q: 4, d: 2, n: 0, p: 0}) 
  end

end
