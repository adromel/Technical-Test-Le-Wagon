class AddMissionsToListings < ActiveRecord::Migration[7.0]
  def change
    add_reference :listings, :mission, foreign_key: true
  end
end
