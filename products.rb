class Products

def initialize(product, base_price)
  @product = product
  @base_price = base_price
  end

  def base_price
    return @base_price
  end

  def product_name
    return @product
  end
end
