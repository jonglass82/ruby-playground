class Item
    
    attr_reader :name, :description, :manufacturer, :price, :summary 
    
def initialize (name, manufacturer, price, description=nil, summary=nil) 
    
    @name = name
    
    @manufacturer = manufacturer
  
    @price = price
    
    @description = description

    
end
    
    
def item_price
   '%.2f' % price
end
  
    
def summary
    
            if description
    @summary = "Name: #{@name}
Description: #{@description}
Manufacturer: #{@manufacturer}
Price: $#{@item_price}"
        else
    @summary = "Name: #{name}
Manufacturer: #{manufacturer}
Price: $#{item_price}"
        end
end
    
end

#expected_summary = %q(Name: Spy Notebook
#Manufacturer: Spys-R-Us
#Price: $10.50)
#
#item = Item.new("Spy Notebook", "Spys-R-Us", 10.50)
#
#item2 = Item.new("Spy Notebook", "Spys-R-Us", 5.75)
#
#items = [item, item2]





