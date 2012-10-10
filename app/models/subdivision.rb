class Subdivision < ActiveRecord::Base
  attr_accessible :name

  belongs_to :department

  SUBDIVISION_TYPES = ["BIT", "Chapter"]
end
