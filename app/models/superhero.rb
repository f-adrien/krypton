class Superhero < ApplicationRecord
  POWERS = ["Flying", "Telekinesis", "Super strong", "Water manipulation", "Fire manipulation", "Super intelligence", "Velocity", "Combat skills", "Super elasticity", "Electricity manipulation", "Invisibility", "Super dexterity", "Time travel"]
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :superpower, inclusion: { in: POWERS }
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # include PgSearch::Model

  # pg_search_scope :superpower_and_location,
  #   against: [:superpower, :location],
  #   using: {
  #     tsearch: {
  #       prefix: true
  #     }
  #   }
end
