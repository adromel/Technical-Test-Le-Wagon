class Reservation < ApplicationRecord
  belongs_to :listing

  after_create :reservation_cleaning

  def reservation_cleaning
    @reservation = Reservation.last
    @listing = @reservation.listing
    @booking = @listing.bookings.where("start_date<=? AND end_date>=?", @reservation.start_date, @reservation.end_date).take
    puts @booking

    @reservation.end_date != @booking.end_date ? Mission.create!(listing_id: @listing.id, date: @reservation.end_date, mission_type: "checkout_checkin", price: @reservation.listing.num_rooms * 10) : nil
  end
end
