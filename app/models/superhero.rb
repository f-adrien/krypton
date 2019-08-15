class Superhero < ApplicationRecord
  POWERS = ["Flying", "Telekinesis", "Super strong", "Water manipulation", "Fire manipulation", "Super intelligence", "Velocity", "Combat skills", "Super elasticity", "Electricity manipulation", "Invisibility", "Super dexterity", "Time travel"]
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :superpower, inclusion: { in: POWERS }
  mount_uploader :photo, PhotoUploader


  include PgSearch::Model

  pg_search_scope :superpower_and_location,
    against: [:superpower, :location],
    using: {
      tsearch: {
        prefix: true
      }
    }

end
