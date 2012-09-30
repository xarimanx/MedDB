class Department < ActiveRecord::Base
  attr_accessible :name

  belongs_to :hospital
end
