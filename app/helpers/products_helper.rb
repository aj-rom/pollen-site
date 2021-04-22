module ProductsHelper

  def view_price(product)
    "$" + '%.2f' % product.price
  end
end
