module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end


    field :orders, [Types::OrderType], null: false
    def orders
      Order.all
    end

    field :all_payments, [Types::PaymentType], null: false

    def all_payments
      Payment.all.order(amount: :desc)
    end
  end
end
