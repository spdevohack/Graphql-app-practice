# frozen_string_literal: true

module Mutations
  class PaymentCreate < BaseMutation
    description "Creates a new payment"
    argument :amount, Float, required: true
    argument :order_id, Integer, required: true

    field :payment, Types::PaymentType, null: false
    field :errors, [String], null: false


    def resolve(amount:, order_id:)
      payment = ::Payment.new(amount: amount, order_id: order_id)
      raise GraphQL::ExecutionError.new "Error creating payment", extensions: payment.errors.to_hash unless payment.save

      { payment: payment}
    end
  end
end
