# frozen_string_literal: true

module Mutations
  class OrderCreate < BaseMutation
    description "Creates a new order"

    argument :description, String, required: true
    argument :total, Float, required: true

    field :order, Types::OrderType, null: false
    field :errors, [String], null: false
    # type Types::OrderType

    def resolve(description:, total:)
      order = Order.new(description: description, total: total)
      if order.save
        { order: order , errors: []}
      else
        {order: nil, errors: order.errors.full_messages }
      end
    end
  end
end
