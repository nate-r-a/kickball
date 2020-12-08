module Types
  class MutationType < Types::BaseObject
    field :create_player, mutation: Mutations::CreatePlayer
    include Mutations::Players
		# field :deletePlayer, mutation: Mutations::DeletePlayer
		# field :createPlayer, mutation: Mutations::CreatePlayer
		# field :updatePlayer, mutation: Mutations::UpdatePlayer
  end
end
