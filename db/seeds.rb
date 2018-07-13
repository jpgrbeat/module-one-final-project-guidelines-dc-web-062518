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
Car.create(stock_number: '438d', year: '2014', make: "honda", model: "moron", price: 7000, cost: 5000, dealership_id:1)
Car.create(stock_number: '440d', year: '2018', make: "toyota", model: "camry", price: 24000, cost: 20000, dealership_id:1)
Car.create(stock_number: '439d', year: '2012', make: "honda", model: "civic", price: 10000, cost: 8000, dealership_id:1)

Customer.create(name: 'John', email: 'james1@james.com', cell: '555-555-5555', car_id: 1)
Customer.create(name: 'George', email: 'james2@james.com', cell: '5555555555', car_id: 1)
Customer.create(name: 'Paul', email: 'james3@james.com', cell: '5555555555', car_id: 1)
Customer.create(name: 'Ringo', email: 'james4@james.com', cell: '555-555-5555', car_id: 2)
Customer.create(name: 'Eddie', email: 'james5@james.com', cell: '555-555-5555', car_id: 2)
Customer.create(name: 'Richie', email: 'james6@james.com', cell: '555-555-5555', car_id: 2)
Customer.create(name: 'Mos Def', email: 'james7@james.com', cell: '555-555-5555', car_id: 2)
Customer.create(name: 'Ron', email: 'james8@james.com', cell: '555-555-5555', car_id: 2)
Customer.create(name: 'Jan', email: 'james9@james.com', cell: '555-555-5555', car_id: 3)
Customer.create(name: 'Gene', email: 'james10@james.com', cell: '5555555555', car_id: 3)
Customer.create(name: 'Pauline', email: 'james11@james.com', cell: '5555555555', car_id: 3)
Customer.create(name: 'Rags the dog', email: 'james12@james.com', cell: '555-555-5555', car_id: 3)
Customer.create(name: 'Edwardo', email: 'james13@james.com', cell: '555-555-5555', car_id: 3)
Customer.create(name: 'Rich dude', email: 'james14@james.com', cell: '555-555-5555', car_id: 3)
Customer.create(name: 'Moas Deef', email: 'james15@james.com', cell: '555-555-5555', car_id: 3)
Customer.create(name: 'Ron', email: 'james16@james.com', cell: '555-555-5555', car_id: 3)

Dealership.create(name: "Josh's Cars", location: "the moon", phone: '555-555-5555', website: 'ftuc.com')
