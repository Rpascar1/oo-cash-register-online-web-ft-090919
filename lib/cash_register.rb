class CashRegister
  attr_accessor :total, :discount, :items, :old_total
  
  
  
  def initialize(employee_discount = nil)
    @total = 0
    @discount = employee_discount
    @items = []
  end  
  
  def add_item(title, price, quantity = 1)
    @old_total = @total
    @total += (price * quantity)
    quantity.times do
    @items << title
    end
  end
  
  def apply_discount
    if discount != nil
    @total = (@total * 0.8)
     "After the discount, the total comes to $#{@total.to_i}"+"."
   else
     "There is no discount to apply."
   end
 end

  def items
    @items
  end  

  def void_last_transaction
    @total = @old_total
  end

end


  

  