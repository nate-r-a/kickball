module Mutations
  module Players
    extend ActiveSupport::Concern

    included do
      field :create_player, Types::PlayerType, null: true do
        argument :attributes, Types::Input::PlayerInput, required: true
      end
    end

    def create_player(args)
      player = Player.new(args[:attributes].to_h)

      return player if player.save
      model_errors!(player)
    end
  end
end