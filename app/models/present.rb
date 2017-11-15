class Present < ApplicationRecord
  belongs_to :event
  validates :name, :store, presence: true
end
