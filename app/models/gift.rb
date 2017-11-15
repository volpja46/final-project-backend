class Gift < ApplicationRecord
 belongs_to :user
 validates :name, :date, :occasion, presence: true
end
