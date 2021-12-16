class Message < ApplicationRecord
  belongs_to :room
  # Broadcast a model rendering over ActionCable after create/update/destroy.
  broadcasts_to :room 
end
