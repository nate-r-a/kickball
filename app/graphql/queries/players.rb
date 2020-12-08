module Queries
  module Players
    extend ActiveSupport::Concern

    included do
      field :players, [Types::PlayerType], null: true

      field :player, Types::PlayerType, null: true do
        argument :id, GraphQL::Types::ID, required: true
      end
    end

    def players
      Player.all
    end

    def player(id:)
      Player.find(id)
    end    
  end
end