class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, null: false, inclusion: { within: 1..5 }
  validates :body, null: false
  # validates :date, null: false
end
