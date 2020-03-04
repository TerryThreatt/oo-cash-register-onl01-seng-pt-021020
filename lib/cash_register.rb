class CashRegister
  attr_accessor :total, :price, :items, :last_transaction 
  attr_reader :discount
  
  def initialize(discount_amount = 0)
    @total = 0
    @discount = discount_amount
    @items = []
  end 
  
  def total=()
  
  def add_item(item, price, quantity = 1)
    if quantity > 1
      i = 0
      while i < quantity
        @items << item 
        i += 1
      end
    else
      @items << item
    end
    @total += price*quantity
    @last_transaction = @total
    @total
  end
  
  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * ( @discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end
    
end 
