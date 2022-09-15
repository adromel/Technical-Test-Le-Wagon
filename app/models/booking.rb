class Booking < ApplicationRecord
  belongs_to :listing
  after_create :booking_cleanings

  def booking_cleanings
    @booking = Booking.last
    Mission.create!(listing_id: @booking.listing_id, date: @booking.start_date, mission_type: "first_checkin", price: @booking.listing.num_rooms * 10)
    Mission.create!(listing_id: @booking.listing_id, date: @booking.end_date, mission_type: "last_checkout", price: @booking.listing.num_rooms * 5)
  end
end
