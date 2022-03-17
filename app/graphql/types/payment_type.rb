# frozen_string_literal: true

module Types
  class PaymentType < Types::BaseObject
    field :id, ID, null: false
    field :amount, Float
    field :order_id, Integer, null: false
    field :status, String, null: false
    # field :orders, [Types::OrderType], String, null:false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
