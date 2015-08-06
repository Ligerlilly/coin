def coin(amount)
  coins = Hash.new
  coins[:q] = 0
  coins[:d] = 0
  coins[:n] = 0
  coins[:p] = 0

  until amount < 25
    amount -= 25
    coins[:q] += 1
  end

  until amount < 10
    amount -= 10
    coins[:d] += 1
  end

  until amount < 5
    amount -= 5
    coins[:n] += 1
  end

  coins
end
