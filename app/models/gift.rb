class Gift < ApplicationRecord
 belongs_to :user
 validates :name, presence: true
 validates :date, presence: true
 validates :for_who, presence: true
end
