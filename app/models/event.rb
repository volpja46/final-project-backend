class Event < ApplicationRecord
  belongs_to :user
  has_many :presents
  validates :name, :type_of_celebration, :budget, presence: true
end
