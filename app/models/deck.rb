class Deck < ApplicationRecord
  validates :name, presence:true, uniqueness: true
  belongs_to :user
  has_many :cards, dependent: :destroy
end
