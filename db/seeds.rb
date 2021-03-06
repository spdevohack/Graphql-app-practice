# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Order.destroy_all
Payment.destroy_all

order1 = Order.create(description: "King of the Hill DVD", total: 100.00)
order2 = Order.create(description: "Mega Man 3 OST", total: 29.99)
order3 = Order.create(description: "Punch Out!! NES", total: 0.75)

payment1 = Payment.create(order_id: order1.id, amount: 20.00, status: "Successful")
payment2 = Payment.create(order_id: order2.id, amount: 1.00, status: "Successful")
payment3 = Payment.create(order_id: order3.id, amount: 0.25, status: "Successful")
payment4 = Payment.create(order_id: order1.id, amount: 5.00, status: "Failed")