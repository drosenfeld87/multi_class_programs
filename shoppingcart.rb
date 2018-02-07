require_relative './products.rb'

class ShoppingCart


  def initialize
      @product = []
  end

  def add_product(product)
    @product << product
  end

  def remove_product(name)
    @product.each do |product|
      if product.product_name == name
        @product.delete(product)
        p 'product deleted'
      end
    end
end

  def total_base_price
    total = 0
    @product.each do |product|
    total = product.base_price + total
    end
    return total
  end

  def total_with_tax
    total = total_base_price + 0.13
  end

  def display
    p @product
  end
end

my_cart = ShoppingCart.new
new_product = Products.new('apple', 5)
new_product2 = Products.new('orange',4)
new_product3 = Products.new('banana',2)
my_cart.add_product(new_product)
my_cart.add_product(new_product2)
my_cart.add_product(new_product3)
my_cart.display
p my_cart.total_with_tax
