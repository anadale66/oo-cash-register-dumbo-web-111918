
class CashRegister
  attr_accessor :discount, :total, :items, :last_transaction
  def initialize(discount=0) 
    @total = 0 
    @discount = discount 
    @items = []
  end

  def add_item(title,price,quantity=1)
    @total += price * quantity  
    quantity.times {|item| @items << title}
    @last_transaction = price 
  end

  def apply_discount
    if @discount > 0
      @total -= @total * (@discount.to_f / 100) 
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply." 
    end
  end

  def void_last_transaction
    @total -= @last_transaction 
  end

end
