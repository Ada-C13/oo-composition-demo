require_relative "order"
require_relative "shipment"
require_relative "merchant"
require_relative "product"

# Demonstrate One to One relationships using Order and Shipment
puts "**********************************"
puts "ONE TO ONE RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Order with ID 1207
order_one = Order.new(1207)
# Make an instance of Order with ID 1392
order_two = Order.new(1392)
# Make an instance of Shipment with a tracking no. of 34668
shipment_eins = Shipment.new(34668)
# Make an instance of Shipment with a tracking no. of 66243
shipment_zwei = Shipment.new(66243)

order_array = [order_one, order_two]


puts "\n\n\nBefore setting the @shipment attribute, we can read the value of @shipment on the Order instance and get nil (which prints as empty string)"
p order_one.shipment


# Set the attribute of @shipment in order 1207 to shipment 334668
order_one.shipment = shipment_eins
order_two.shipment = shipment_zwei
order_one.update

# Read the shipment attribute of order 1207 again
puts "\n\n\nAfter setting the @shipment attribute, we can read the value of @shipment on the Order instance and get a value!"
# puts "Order Number #{order_one.id} has a tracking number of #{order_one.shipment.tracking_number}"

order_array.each do |cur_order|
  puts "Order Number #{cur_order.id} has a tracking number of #{cur_order.shipment.tracking_number}, and is #{cur_order.shipment.status}"
end


# Demonstrate One to Many relationships using Merchant and Product
puts "\n\n\n**********************************"
puts "ONE TO MANY RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Merchant with name "Hamled"
merchant_a = Merchant.new("Hamled")
# Make an instance of Merchant with name "tildeee"
merchant_b = Merchant.new("tildeee")
# Make an instance of Product with name "Sandals"
product_first = Product.new("Sandals")
# Make an instance of Product with name "Fish Oil"
product_second = Product.new("Fish Oil")
# Make an instance of Product with name "Bath Salts"
product_third = Product.new("Bath Salts")
# Make an instance of Product with name "Almond Flour"
product_fourth = Product.new("Almond Flour")

# Read the @products attribute of Hamled
puts "\n\n\nBefore modifying the @products attribute, we can read the value of @product on the Merchant instance and get an empty array (which prints as empty string)"
p merchant_a.products

# Shovel the products "sandals" and "fish oil" into Hamled's @products array
merchant_a.products << product_first
merchant_a.products << product_second


# Read the @products attribute of Hamled again
puts "\n\n\nAfter modifying the @products attribute, we can read the value of @products on the Merchant instance and get a value!"
p merchant_a.products
# What is the data type of Hamled's @products attribute?
puts merchant_a.products.class
# How do we read the names of every product that Hamled has?

merchant_a.products.each do |cur_product|
  puts cur_product.name
end




# Optional: Can we refactor that?
