require_relative "../lib/take_away"

describe "Takeaway" do

  let (:takeaway) {Takeaway.new}

it "should have a menu with a list of dishes and prices" do
  expect(takeaway.menu).to eq({ "curry" => 8, 
        "lasagne" => 7,
        "pizza" => 10,
        "lobster" => 15})
end

it "should know price for each dish ordered" do
  expect(takeaway.dish_price( "curry", 2)).to eq(16)
  expect(takeaway.dish_price("lasagne", 6)).to eq(42)
end

it "should check the total price and raise an error if incorrect"
 expect(takeaway.total_price("curry", 2),("lasagne", 6)).to eq(58)
end
end
