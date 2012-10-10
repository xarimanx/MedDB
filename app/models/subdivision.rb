class Subdivision < ActiveRecord::Base
  attr_accessible :name

  belongs_to :department
  has_many :rooms

  SUBDIVISION_TYPES = ["BIT", "Chapter"]
end
