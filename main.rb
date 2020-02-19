require_relative "order"
require_relative "shipment"
require_relative "merchant"
require_relative "product"

# Demonstrate One to One relationships using Order and Shipment
puts "**********************************"
puts "ONE TO ONE RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Order with ID 1207
order_a = Order.new(1207)
# Make an instance of Order with ID 1392
order_b = Order.new(1392)
# Make an instance of Shipment with a tracking no. of 34668
shipment_i = Shipment.new(34668, order_a)
# Make an instance of Shipment with a tracking no. of 66243
shipment_ii = Shipment.new(66243, order_b)

# Read the @shipment attribute of order 1207
puts "\n\n\nBefore setting the @shipment attribute, we can read the value of @shipment on the Order instance and get nil (which prints as empty string)"
puts "The shipment for order 1207: #{order_a.shipment.class}"

# Set the attribute of @shipment in order 1207 to shipment 34668
# order_a.shipment = shipment_i

# Read the shipment attribute of order 1207 again
puts "\n\n\nAfter setting the @shipment attribute, we can read the value of @shipment on the Order instance and get a value!"
puts "The shipment for order 1207: #{order_a.shipment.tracking_number}"

# order_b.shipment = shipment_ii


# Demonstrate One to Many relationships using Merchant and Product
puts "\n\n\n**********************************"
puts "ONE TO MANY RELATIONSHIPS IN RUBY:"
puts "**********************************\n"

# Make an instance of Merchant with name "Hamled"
merchanct_ham = Merchant.new("Hamled")
# Make an instance of Merchant with name "tildeee"
merchant_tild = Merchant.new("Tildee")
# Make an instance of Product with name "Sandals"
product_s = Product.new("Sandals")
# Make an instance of Product with name "Fish Oil"
product_f = Product.new("Fish Oils")
# Make an instance of Product with name "Bath Salts"
product_b = Product.new("Bath Salts")
# Make an instance of Product with name "Almond Flour"
product_a = Product.new("Almond Flour")

# Read the @products attribute of Hamled
puts "\n\n\nBefore modifying the @products attribute, we can read the value of @product on the Merchant instance and get an empty array (which prints as empty string)"
p "This is the current products for Hamled: #{merchanct_ham.products}"

# Shovel the products "sandals" and "fish oil" into Hamled's @products array
merchanct_ham.products.<<(product_s)
merchanct_ham.products << product_f

# Read the @products attribute of Hamled again
puts "\n\n\nAfter modifying the @products attribute, we can read the value of @products on the Merchant instance and get a value!"
p merchanct_ham.products

# What is the data type of Hamled's @products attribute?
# How do we read the names of every product that Hamled has?

merchanct_ham.products.each do |prod|
  puts prod.name
end

# Optional: Can we refactor that?
