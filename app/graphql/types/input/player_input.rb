module Types
  module Input
    class PlayerInput < Types::BaseInputObject
      argument :name, String, required: false
      argument :number, String, required: false
    end
  end
end