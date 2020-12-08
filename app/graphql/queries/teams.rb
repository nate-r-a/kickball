module Queries
  module Teams
    extend ActiveSupport::Concern

    included do
      field :teams, [Types::TeamType], null: true

      field :team, Types::TeamType, null: true do
        argument :id, GraphQL::Types::ID, required: true
      end
    end

    def teams
      Team.all
    end

    def team(id:)
      Team.find(id)
    end    
  end
end