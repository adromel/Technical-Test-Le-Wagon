class Mission < ApplicationRecord
  belongs_to :listing

  # validates_uniqueness_of :date, scope: :listing_id
end
