require 'rspec'
require 'coin'

describe 'Fixnum#coin' do
  it 'takes and argument then returns numbers of quarters' do
    expect(100.coin).to eq({q: 4, d: 0, n: 0, p: 0})
  end
  it 'takes and argument then returns numbers of quarters and dimes' do
    expect(120.coin).to eq({q: 4, d: 2, n: 0, p: 0})
  end
  it 'takes and argument then returns numbers of quarters, dimes, and nickles' do
    expect(155.coin).to eq({q: 6, d: 0, n: 1, p: 0})
  end
  it 'takes and argument then returns numbers of quarters, dimes, nickles, and pennies' do
    expect(159.coin).to eq({q: 6, d: 0, n: 1, p: 4})
  end

end
