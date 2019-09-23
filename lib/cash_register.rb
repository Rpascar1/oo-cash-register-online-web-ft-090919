 attr_accessor :total, :discount, :price, :item

 def initialize(discount = 0)
   @total = 0
   @discount = discount
    @@items = []
 end
 
 def add_item(title, price, quantity = 1)
     @old_total = @total
     @total += (price * quantity)
     quantity.times do
     @items << title
     end
   end

 def apply_discount
   if @discount != 0
     @total -= @discount * 10
     "After the discount, the total comes to $#{@total}."
   else
     "There is no discount to apply."
   end
 end

 def items
   @@items
 end


end
