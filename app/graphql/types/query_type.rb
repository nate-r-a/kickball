module Types
  class QueryType < Types::BaseObject
    include Queries::Players
    include Queries::Teams
  end
end
