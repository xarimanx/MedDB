class Room < ActiveRecord::Base
  attr_accessible :number
  belongs_to :subdivision

  validates :number, presence: true,
                     inclusion: { in: 1..23,
                                  message: "The value: %{value} is not included in 1..23."
                                },
                     uniqueness: true

end
