# frozen_string_literal: true

module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :description, String
    field :total, Float
    field :payments, [Types::PaymentType], String, null: false
    field :payment_count, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false


    def payment_count
      object.payments.size
    end
  end
end
