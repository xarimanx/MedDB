class Hospital < ActiveRecord::Base
  attr_accessible :name

  has_many :departments
  has_many :employees, class_name: "User"
end
