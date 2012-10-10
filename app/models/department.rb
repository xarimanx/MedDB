class Department < ActiveRecord::Base
  attr_accessible :name

  belongs_to :hospital
  has_many :subdivisions
end
