class City < ApplicationRecord
  belongs_to :pref

  validates :city_name, presence: true, length: { maximum: 50 }
end
