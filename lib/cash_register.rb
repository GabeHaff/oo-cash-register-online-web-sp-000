class CashRegister
  attr_accessor :discount, :total, :items, :price, :transaction
  
  def initialize(discount=nil)
  self.total = 0 
  self.discount = discount if discount !=nil
  self.items = []
end 

def add_item(title, price, quantity=1)
  self.transaction = price*quantity
@total += price*quantity
quantity.times do 
 self.items << title
end 
end

def apply_discount
       if discount 
         discount = (100.0 - @discount).to_f / 100
   new_total = (self.total*discount).to_i
         @total = new_total
  pin_pad_reads = "After the discount, the total comes to $#{new_total}."
  else 
    pin_pad_reads = "There is no discount to apply."
end
return pin_pad_reads
end 

 
 def void_last_transaction
  #quantity = self.transaction
  #self.transaction = price*quantity
   #@total -= self.transaction.to_i[1]
   #self.items.pop
   @total -= self.transaction
 end 


#def void_last_transaction
  #  quantity = self.transaction[2]
   # quantity.times do
     # self.purchases.pop
     # self.total -= self.transaction[1]
   # end
 # end

##def add_item(name, price, quantity=1)
   # self.transaction = [name, price, quantity]
   # quantity.times do
     # self.purchases.push self.transaction[0]
     # self.total += self.transaction[1]
   # end
  #end


 
 
 
 
 ##The void_last_transaction method will remove the last transaction from the total. You'll need to make an additional attribute accessor(last_transaction) and keep track of that last transaction amount somehow. In what method of the class are you working with an individual item?(add_item)
 
 ##def add_item(title, price, quantity=1)
#@total += price*quantity
#quantity.to_i.times do 
# @items << title

#@last_transaction < remove from >> @items.to_i // @total
#// @last_transaction = @items(-1) //
#last_transaction = price*quantity
#@items.delete_at(-1) 
#end 
#end
 
 
end