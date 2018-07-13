# create_table "cars", force: :cascade do |t|
#   t.string  "stock_number"
#   t.string  "year"
#   t.string  "make"
#   t.string  "model"
#   t.float   "price"
#   t.float   "cost"
#   t.integer "dealer_id"
Car.create(stock_number: '432d' , year: '1998', make: "ford", model: "orange", price: 500, cost: 200, dealership_id:1)
Car.create(stock_number: "433d", year: '1998', make: "apple", model: "iphone", price: 50, cost: 21, dealership_id:1)
Car.create(stock_number: '435d' , year: '2001', make: "Honda", model: "Malibu", price: 2000, cost: 50, dealership_id:1)
Car.create(stock_number: '4344d', year: '2004', make: "ford", model: "orange", price: 500, cost: 200, dealership_id:1)
Car.create(stock_number: '43s', year: '110', make: "sledge", model: "rock mobile", price: 5, cost: 1, dealership_id:1)
Car.create(stock_number: '432d', year: '2016', make: "honda", model: "ace", price: 52, cost: 10, dealership_id:1)
Customer.create(name: 'James', email: 'james1@james.com', cell: '555-555-5555', car_id: 7)
Customer.create(name: 'George', email: 'james2@james.com', cell: 5555555555, car_id: 7)
Customer.create(name: 'John', email: 'james3@james.com', cell: 5555555555, car_id: 7)
Customer.create(name: 'Ron', email: 'james4@james.com', cell: '555-555-5555', car_id: 8)
Customer.create(name: 'James', email: 'james5@james.com', cell: '555-555-5555', car_id: 8)
Customer.create(name: 'George', email: 'james6@james.com', cell: '555-555-5555', car_id: 8)
Customer.create(name: 'John', email: 'james7@james.com', cell: '555-555-5555', car_id: 8)
Customer.create(name: 'Ron', email: 'james8@james.com', cell: '555-555-5555', car_id: 8)

Dealership.create(name: "Famous Ted's used cars", location: "the moon", phone: 555-555-5555, website: 'ftuc.com')
