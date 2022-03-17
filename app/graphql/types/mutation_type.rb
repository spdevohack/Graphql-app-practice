module Types
  class MutationType < Types::BaseObject
    field :payment_create, mutation: Mutations::PaymentCreate
    field :order_create, mutation: Mutations::OrderCreate
    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end


    # field :order_create, mutation: Mutations::OrderCreate
  end
end
