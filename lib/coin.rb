class Fixnum

  define_method(:coin) do
    coins = Hash.new
    coins[:q] = 0
    coins[:d] = 0
    coins[:n] = 0
    coins[:p] = 0
    amount = self

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

    until amount == 0
      amount -= 1
      coins[:p] += 1
    end

    # quarters = coins[:q]
    # dimes = coins[:d]
    # nickles = coins[:n]
    # pennies = coins[:p]

    coins
  end
end
