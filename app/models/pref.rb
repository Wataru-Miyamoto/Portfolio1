class Pref < ApplicationRecord
  has_many :pref_topics, dependent: :destroy

  validates :pref_name, presence: true, length: { maximum: 50 }
end
