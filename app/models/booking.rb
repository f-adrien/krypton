class Booking < ApplicationRecord
  belongs_to :superhero
  belongs_to :user
  validates :start_date, :end_date, presence: true

  after_create :set_total_price

  def set_total_price
    self.update(total_price: self.superhero.price_per_day * (self.end_date - self.start_date))
  end
end
