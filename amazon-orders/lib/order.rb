require_relative './item.rb'

    
class Order 
    
    attr_reader :customer, :placed_at, :payment_method, :shipping_address, :items, :total, :summary
    
    def initialize(customer, placed_at, payment_method, shipping_address, items=nil, total=nil, summary=nil)
        
        
    @customer = customer
        
    @placed_at = placed_at
        
    @payment_method = payment_method
        
    @shipping_address = shipping_address.to_s
        
    @items = Item.new()
#        
#    @total =
#        
#    @summary = "Name: #{name}
#Description: #{description}
#Manufacturer: #{manufacturer}
#Price: $#{item_price}"
            
    end
      
end

order = Order.new("12/10/2014", "Gene Parmesan", "PayPal",
      "100 Spy Street, Newport Beach, CA 92625")

puts order.shipping_address

