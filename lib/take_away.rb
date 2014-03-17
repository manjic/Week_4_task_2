require 'twilio-ruby'

class Takeaway

  attr_reader :menu

  def initialize
    @menu = menu
  end

  def menu
        { "curry" => 8, 
        "lasagne" => 7,
        "pizza" => 10,
        "lobster" => 15}
  end

  def dish_price (dish, quantity)
    dish_order = menu.select { |d, p| quantity * (p) if d == "#{dish}" }
    dish_order ["#{dish}"] * quantity
  end

  def total_price(*dish_price)
    total_order = []
    dish_price >> total_order
    total_price = total_order.inject(:+)
  end

  def order_placed(price_to_check)
    if total_price = price_to_check
      send text "Thank you! Your order has been received a
        and will be with you shortly"
    else raise error "Please try again final price incorrect"
    end
  end
  
end




