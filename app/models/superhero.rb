class Superhero < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
