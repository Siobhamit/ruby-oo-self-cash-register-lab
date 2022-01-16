
require "pry"


class CashRegister


attr_accessor :total, :items, :discount, :last_transaction

def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
    @last_transaction = []
end

def total
    return @total
end

def items
 return @items
end

def add_item(title, price, quantity = 1)
self.total += (price * quantity)
@last_transaction << (price * quantity)
self.total
i = 0
until i == quantity do
    self.items << title 

i += 1
end
end


def apply_discount
    if @discount != 0
  self.total = (total * ((100.0 - @discount.to_f) / 100.0)).to_i
    return "After the discount, the total comes to $#{@total}."
    else
        return "There is no discount to apply."
end
end


def void_last_transaction 
    self.items.pop
    self.total -= @last_transaction[-1]
    @last_transaction.pop
    self.total.to_f
end

end