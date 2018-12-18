require_relative './item.rb'

    
class Order < Item
    
    attr_reader :placed_at, :customer, :payment_method, :shipping_address, :items, :total, :summary
    
def initialize(placed_at, customer, payment_method, shipping_address, items=nil, total=nil, summary=nil)
        
    @placed_at = placed_at    
    
    @customer = customer
        
    @payment_method = payment_method
        
    @shipping_address = shipping_address
        
    @items = items.to_a
       
end
    
    
    def total
        n = 0
        items.each do |t|
           n+= t.price
        end
        return n
    end


    def summary 

"Date: #{placed_at}
Customer: #{customer}
Payment method: #{payment_method}
Shipping address: #{shipping_address}                

Items:

#{show_summaries}

Total: $#{total}"

    end
    
    
    def show_summaries

      items.each do |i|
         return i.summary
    end 
    
    
end
    
end


    order = Order.new("12/10/2014", "Gene Parmesan", "PayPal",
      "100 Spy Street, Newport Beach, CA 92625")

    order.items << Item.new("Magnifying Glass","Spys-R-Us",
      5.75, "Great for inspecting clues.")

    order.items << Item.new("Spy Notebook", "Spys-R-Us", 10.50)



puts order.summary

